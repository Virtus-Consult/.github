# Versionamento e Releases

## Semantic Versioning

`MAJOR.MINOR.PATCH` — ex.: `v2.4.1`

| Mudança | Incrementa | Commit que gera |
| --- | --- | --- |
| Incompatível com a anterior | MAJOR | `feat!:` ou `BREAKING CHANGE:` |
| Nova funcionalidade compatível | MINOR | `feat:` |
| Correção compatível | PATCH | `fix:`, `perf:` |

## Processo

1. Releases são criadas a partir da `main` com tag `vX.Y.Z`.
2. O changelog é gerado automaticamente a partir dos títulos de PR (Conventional Commits).
3. Use o workflow template **Release Please** (aba Actions → New workflow → "Virtus — Release") para automatizar versão, tag e `CHANGELOG.md`.
4. Releases de produção usam um **Environment** `production` com aprovação obrigatória.

## Ambientes

| Environment | Deploy | Proteção |
| --- | --- | --- |
| `development` | Automático a cada merge na `main` | — |
| `staging` | Automático em tag `v*` | — |
| `production` | Manual após staging | Aprovação de `@Virtus-Consult/maintainers` |
