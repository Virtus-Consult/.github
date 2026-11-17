# Checklist de Configuração da Organização

Configurações que **não podem** ser aplicadas por arquivo e devem ser feitas em **Settings** da org (`https://github.com/organizations/Virtus-Consult/settings`). O script [`scripts/setup-org.sh`](../scripts/setup-org.sh) automatiza os itens marcados com .

## Perfil
- [ ] Nome de exibição, logo, descrição, site e e-mail público
- [ ] Verificar o domínio (Settings → Verified domains) para ganhar o selo de verificação

## Membros e segurança
- [ ] **Authentication security → Require two-factor authentication**
- [ ] **Base permissions: Read**
- [ ] Membros **não podem** criar repositórios públicos
- [ ] Membros **não podem** mudar visibilidade nem apagar/transferir repos
- [ ] Owners: mínimo 2 pessoas (evita perder acesso à org)

## Times
- [ ] Criar `admins`, `maintainers`, `developers` (ver [GOVERNANCE.md](../GOVERNANCE.md))
- [ ] Times "closed" (visíveis para membros)

## Code security (Settings → Code security → Configurations)
- [ ] Aplicar a configuração **GitHub recommended** a todos os repos
- [ ] Dependency graph, Dependabot alerts e security updates
- [ ] Secret scanning + **push protection**
- [ ] Private vulnerability reporting
- [ ] Code scanning (CodeQL) default setup — em repos públicos é gratuito

## Repositórios
- [ ] Importar o ruleset `rulesets/protecao-main.json` (Settings → Repository → Rulesets → Import)
- [ ] Repository defaults: branch padrão `main`
- [ ] Labels padrão (workflow `sync-labels`)

## Actions
- [ ] Permitir apenas actions do GitHub, de criadores verificados e de `Virtus-Consult/*`
- [ ] Workflow permissions padrão: **Read repository contents**
- [ ] Exigir aprovação para workflows de forks de contribuidores externos

## Planejamento
- [ ] Ativar **Discussions** da org (usando o repo `.github`)
- [ ] Criar um **GitHub Project** (Projects v2) da org com visões: Board, Backlog, Roadmap
