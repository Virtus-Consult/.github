#!/usr/bin/env bash
# Cria/atualiza as labels de labels.yml em todos os repositórios (não arquivados) da org.
# Uso: GH_TOKEN=... bash scripts/sync-labels.sh <org> [repo]
set -euo pipefail

ORG="${1:?Informe a organização}"
ONLY_REPO="${2:-}"
LABELS_FILE="$(dirname "$0")/../labels.yml"

command -v yq >/dev/null || { echo "Instale o yq (https://github.com/mikefarah/yq)"; exit 1; }

if [[ -n "$ONLY_REPO" ]]; then
  repos="$ONLY_REPO"
else
  repos=$(gh repo list "$ORG" --no-archived --limit 1000 --json name -q '.[].name')
fi

count=$(yq 'length' "$LABELS_FILE")
for repo in $repos; do
  echo "→ $ORG/$repo"
  for ((i = 0; i < count; i++)); do
    name=$(yq ".[$i].name" "$LABELS_FILE")
    color=$(yq ".[$i].color" "$LABELS_FILE")
    desc=$(yq ".[$i].description" "$LABELS_FILE")
    gh label create "$name" --repo "$ORG/$repo" --color "$color" --description "$desc" --force >/dev/null
  done
done
echo "Labels sincronizadas."
