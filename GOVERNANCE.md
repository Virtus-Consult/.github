# Governança

## Papéis

| Papel | Time no GitHub | Permissão | Responsabilidades |
| --- | --- | --- | --- |
| Owner | — (role da org) | Owner | Billing, segurança, configurações da org. **Mínimo 2, máximo 3 pessoas.** |
| Admin | `@Virtus-Consult/admins` | Admin nos repos | Rulesets, padrões, aprovação de mudanças no `.github` |
| Maintainer | `@Virtus-Consult/maintainers` | Maintain | Revisar e mergear PRs, gerenciar issues e releases |
| Developer | `@Virtus-Consult/developers` | Write | Abrir branches e PRs, revisar código |
| Convidado | Outside collaborator | Read/Triage | Acesso pontual a repos específicos |

## Princípios de acesso

- **Menor privilégio**: permissão base da org é **Read**; acesso de escrita vem por times.
- **Acesso por time, não por pessoa**: evite adicionar usuários diretamente aos repos.
- **Revisão trimestral** de membros, times e outside collaborators.
- **Offboarding**: remover da org no mesmo dia da saída.

## Times por projeto

Para cada produto, crie um time filho de `developers` (ex.: `developers/app-mobile`) e use-o no `CODEOWNERS` do repo.

## Decisões

- Decisões técnicas relevantes são registradas como **ADR** (`docs/adr/NNNN-titulo.md`) no repo afetado.
- Mudanças em padrões da org são feitas via PR neste repositório e exigem aprovação de `@Virtus-Consult/admins`.
