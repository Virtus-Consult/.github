# Nomenclatura de Repositórios

## Formato

```
<produto>-<componente>
```

- Letras minúsculas, palavras separadas por hífen (`kebab-case`), sem acentos.
- Nome descreve **o que é**, não a tecnologia (prefira `loja-api` a `loja-node`).

| Exemplo | Descrição |
| --- | --- |
| `loja-api` | Backend da loja |
| `loja-web` | Frontend web da loja |
| `loja-mobile` | App mobile da loja |
| `infra-terraform` | Infraestrutura como código |
| `lib-ui` | Biblioteca de componentes compartilhada |
| `docs-engenharia` | Documentação técnica |

Prefixos reservados: `lib-` (bibliotecas), `infra-` (infraestrutura), `docs-` (documentação), `poc-` (provas de conceito, arquivar após uso), `template-` (templates).

## Todo repositório deve ter

- [ ] Criado a partir do [`template-repositorio`](https://github.com/Virtus-Consult/template-repositorio)
- [ ] **Descrição** preenchida e **topics** (ex.: `backend`, `typescript`, `loja`)
- [ ] `README.md` com: o que é, como rodar, como testar, como implantar
- [ ] `CODEOWNERS` apontando para um time
- [ ] Acesso concedido a **times**, não a pessoas
- [ ] Visibilidade **privada** por padrão (público só com aprovação)
- [ ] Repositórios sem uso há 6 meses devem ser **arquivados**

## Topics recomendados

- Tipo: `backend`, `frontend`, `mobile`, `infra`, `library`, `docs`
- Linguagem: `typescript`, `python`, `java`, ...
- Status: `deprecated`, `poc`
