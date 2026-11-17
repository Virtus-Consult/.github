#!/usr/bin/env bash
# Aplica as configurações recomendadas na organização via GitHub CLI.
# Pré-requisitos: gh autenticado como Owner da org (gh auth login -s admin:org).
# Uso: bash scripts/setup-org.sh Virtus-Consult
set -euo pipefail

ORG="${1:?Informe a organização}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

echo "== Configurações gerais da org =="
gh api -X PATCH "orgs/$ORG" \
  -f default_repository_permission=read \
  -F members_can_create_public_repositories=false \
  -F members_can_create_private_repositories=true \
  -F members_can_fork_private_repositories=false \
  -F web_commit_signoff_required=false \
  -F dependabot_alerts_enabled_for_new_repositories=true \
  -F dependabot_security_updates_enabled_for_new_repositories=true \
  -F dependency_graph_enabled_for_new_repositories=true \
  -F secret_scanning_enabled_for_new_repositories=true \
  -F secret_scanning_push_protection_enabled_for_new_repositories=true \
  >/dev/null
echo "ok"

echo "== Times =="
create_team() {
  local name="$1" desc="$2" parent_id="${3:-}"
  if gh api "orgs/$ORG/teams/$name" >/dev/null 2>&1; then
    echo "  $name já existe"
  else
    args=(-f name="$name" -f description="$desc" -f privacy=closed)
    [[ -n "$parent_id" ]] && args+=(-F parent_team_id="$parent_id")
    gh api -X POST "orgs/$ORG/teams" "${args[@]}" >/dev/null
    echo "  $name criado"
  fi
}
create_team admins "Administradores da organização"
create_team maintainers "Revisam e fazem merge de PRs, gerenciam releases"
create_team developers "Desenvolvedores da organização"

echo "== Ruleset de proteção da branch padrão =="
if gh api "orgs/$ORG/rulesets" -q '.[].name' | grep -qx "protecao-main"; then
  echo "  ruleset já existe"
else
  gh api -X POST "orgs/$ORG/rulesets" --input "$ROOT/rulesets/protecao-main.json" >/dev/null \
    && echo "  ruleset criado" \
    || echo "  ⚠ falhou — rulesets de org em repos privados exigem plano Team/Enterprise"
fi

echo "== Permissões padrão do GITHUB_TOKEN nas Actions =="
gh api -X PUT "orgs/$ORG/actions/permissions/workflow" \
  -f default_workflow_permissions=read \
  -F can_approve_pull_request_reviews=false >/dev/null
echo "ok"

cat <<MSG

Concluído. Itens que precisam ser feitos manualmente na interface:
  - Exigir 2FA:            https://github.com/organizations/$ORG/settings/security
  - Code security config:  https://github.com/organizations/$ORG/settings/security_analysis
  - Discussions da org:    https://github.com/organizations/$ORG/settings/discussions
Veja docs/configuracao-da-organizacao.md para o checklist completo.
MSG
