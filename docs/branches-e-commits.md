# Branches e Commits

## Estratégia: trunk-based

- `main` é sempre estável e implantável. Ninguém faz push direto nela (bloqueado por ruleset).
- Branches de trabalho vivem **poucos dias** e saem/voltam da `main` via PR.
- Merge padrão: **squash merge** (histórico linear, 1 commit por PR).

## Nome de branches

```
<tipo>/<numero-da-issue>-<descricao-curta>
```

| Tipo | Uso | Exemplo |
| --- | --- | --- |
| `feat/` | Nova funcionalidade | `feat/42-cadastro-de-clientes` |
| `fix/` | Correção de bug | `fix/57-erro-no-login` |
| `hotfix/` | Correção urgente em produção | `hotfix/61-pagamento-duplicado` |
| `refactor/` | Refatoração | `refactor/70-extrai-servico-email` |
| `docs/` | Documentação | `docs/12-readme-instalacao` |
| `chore/` | Build, deps, configs | `chore/80-atualiza-node-22` |
| `test/` | Testes | `test/33-cobertura-pedidos` |

Use letras minúsculas, sem acentos, palavras separadas por hífen.

## Commits — Conventional Commits

```
<tipo>(<escopo opcional>): <descrição no imperativo>

[corpo opcional]

[rodapé opcional: BREAKING CHANGE:, Closes #123]
```

Tipos: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.

Exemplos:

```
feat(pedidos): adiciona filtro por data
fix(auth): impede login com token expirado
docs: atualiza instruções de instalação
feat(api)!: remove endpoint /v1/usuarios

BREAKING CHANGE: use /v2/usuarios.
```

Como usamos squash merge, **o título do PR vira o commit final** — por isso ele também deve seguir o padrão (validado pelo workflow `pr-title`).
