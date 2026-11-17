# Guia de Contribuição

Obrigado por contribuir com a Virtus! Este guia vale para todos os repositórios da organização, a menos que o repo tenha seu próprio `CONTRIBUTING.md`.

## Fluxo de trabalho

1. **Issue primeiro** — toda mudança não trivial começa com uma issue.
2. **Crie uma branch** a partir da `main` atualizada (ver [convenção de branches](docs/branches-e-commits.md)):
   ```bash
   git switch main && git pull
   git switch -c feat/123-login-com-google
   ```
3. **Commits pequenos** seguindo [Conventional Commits](https://www.conventionalcommits.org/pt-br/):
   ```
   feat(auth): adiciona login com Google
   fix(api): corrige timeout na listagem de pedidos
   ```
4. **Abra um Pull Request** usando o template, vinculando a issue (`Closes #123`).
5. **CI verde + 1 aprovação** são obrigatórios para o merge.
6. **Squash merge** na `main`; a branch é apagada automaticamente.

## Pull Requests

- Mantenha PRs pequenos (idealmente < 400 linhas alteradas).
- Abra como **Draft** enquanto estiver em andamento.
- Responda a todos os comentários antes de pedir nova revisão.
- Não faça merge do próprio PR sem revisão.

## Revisão de código

Quem revisa deve verificar: corretude, testes, legibilidade, segurança e impacto em performance. Use prefixos nos comentários:

| Prefixo | Significado |
| --- | --- |
| `bloqueante:` | Precisa ser resolvido antes do merge |
| `sugestão:` | Melhoria opcional |
| `dúvida:` | Pedido de esclarecimento |
| `nit:` | Detalhe estético, não bloqueia |

## Padrões

- [Branches e commits](docs/branches-e-commits.md)
- [Nomenclatura de repositórios](docs/nomenclatura-repositorios.md)
- [Versionamento e releases](docs/releases.md)
- [Labels](labels.yml)

## Dúvidas

Veja [SUPPORT.md](SUPPORT.md).
