# Política de Segurança

## Reportando uma vulnerabilidade

**Não abra issues públicas para vulnerabilidades.**

Use o **reporte privado de vulnerabilidades** do GitHub: na aba **Security** do repositório afetado, clique em **Report a vulnerability**. Alternativamente, envie um e-mail para **seguranca@virtus.dev** _(ajuste para o e-mail real)_.

Inclua, se possível:

- Repositório e versão/commit afetados
- Descrição do problema e impacto
- Passos para reproduzir ou prova de conceito
- Sugestão de correção

## Prazos

| Etapa | Prazo |
| --- | --- |
| Confirmação de recebimento | até 2 dias úteis |
| Avaliação inicial e severidade | até 5 dias úteis |
| Correção de severidade crítica/alta | até 30 dias |

Daremos crédito a quem reportar, se desejar.

## Práticas da organização

- 2FA obrigatório para todos os membros
- Dependabot alerts e security updates ativos
- Secret scanning e push protection ativos
- Branch `main` protegida por ruleset (PR + CI obrigatórios)
- Segredos apenas em GitHub Secrets / Environments — nunca no código
