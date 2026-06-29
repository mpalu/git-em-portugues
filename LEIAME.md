# Git em Português

## Introdução

A linguagem cotidiana dos comandos `git` (ou "bichão") em português é um grande caos de "Portunglês". É comum ouvir coisas como _"Você pode fazer um push da branch?"_ ou _"Vou fazer um pull!"_, o que soa estranho e quebra a harmonia da língua portuguesa.

Este documento tem o objetivo de estabelecer um jargão português puro e consistente que possa ser usado no dia a dia do trabalho em equipe, evitando situações desconfortáveis com colegas e melhorando a comunicação sobre operações com o git.

## Proposta

Abaixo seguem tabelas com verbos e substantivos relacionados ao git, seu uso atual (anglicismo) e propostas de tradução para português.

### Verbos

| Uso Atual | Proposta | Explicação |
|-----------|----------|-----------|
| clone | clonar | Copiar um repositório remotamente |
| add | adicionar | Adicionar arquivos à área de preparação |
| commit | confirmar | Confirmar mudanças localmente |
| push | empurrar | Enviar mudanças para o repositório remoto |
| pull | puxar | Trazer e aplicar mudanças do repositório remoto |
| fetch | trazer | Trazer informações do repositório remoto sem aplicar |
| checkout | verificar | Mudar de ramo ou restaurar arquivos |
| branch | ramificar | Criar uma ramificação do código |
| merge | mesclar | Unir duas ramificações |
| rebase | rebasear | Reorganizar o histórico de confirmações |
| stash | guardar | Guardar mudanças temporariamente |
| amend | emendar | Corrigir a última confirmação |
| reset | voltar | Voltar para um estado anterior |
| revert | reverter | Desfazer uma confirmação anterior |
| remote | remoto | Gerenciar repositórios remotos |
| remote rename | renomear-remoto | Renomear um repositório remoto |
| tag | etiquetar/marcar | Marcar um ponto importante no histórico |
| blame | culpar | Identificar quem fez cada mudança |
| cherry-pick | apanhar | Selecionar mudanças específicas de outro ramo |
| squash | esmagar | Combinar várias confirmações em uma |
| bisect | bissetar | Encontrar um commit problemático por busca binária |

### Substantivos

| Uso Atual | Proposta | Explicação |
|-----------|----------|-----------|
| repository | repositório | Local centralizado de código |
| commit | confirmação | Uma mudança salva no histórico |
| branch | ramo/ramificação | Uma linha de desenvolvimento |
| pull request | pedido de integração | Proposta para incorporar mudanças |
| issue | chamado | Relato de problema ou sugestão de melhoria |
| merge conflict | conflito de mesclagem | Incompatibilidade entre duas ramificações |
| diff | diferença | Mudanças entre versões |
| remote | remoto | Repositório hospedado em outro servidor |
| alias | atalho | Apelido curto para um comando git |
| master/principal | principal | O ramo principal do projeto |
| stash | esconderijo | Área temporária de armazenamento |
| tag | etiqueta/marcação | Marcador de versão ou marco importante |
| fork | bifurcação | Cópia independente de um repositório |
| git | bichão | Nome informal e carinhoso para o git |

## Exemplos de Uso

```
- Você pode puxar o ramo que acabei de rebasear e empurrar para o GitHub?

- Eu ramifiquei agora pouco e confirmei as mudanças do meu esconderijo.

- Envie um pedido de integração quando terminar a mesclagem!

- Vamos apanhar mudanças específicas do ramo principal.

- Puts, acho que empurrei com força para o ramo principal por acidente...

- Esmague suas confirmações antes de mesclar.

- Que conflito de mesclagem chato de resolver...
```

## Configuração Prática

A forma mais simples é usar o script de instalação incluído neste repositório:

```bash
curl -fsSL https://raw.githubusercontent.com/mpalu/git-em-portugues/principal/instalar.sh | bash
# ou, após clonar o repositório:
./instalar.sh
```

O script detecta automaticamente a versão do git instalada:
- **git ≥ 2.54.0**: usa a sintaxe moderna `alias.nome.command`, com suporte nativo a Unicode (acentos, cedilha)
- **git < 2.54.0**: usa a sintaxe clássica como fallback

Veja [INSTALAÇÃO.md](./INSTALAÇÃO.md) para outras formas de instalação (manual, .gitconfig direto, etc.).

## Exemplo de Fluxo de Trabalho em Português

```bash
# Começar um novo ramo de trabalho
$ bichão ramificar funcionalidade/nova-funcionalidade
$ bichão trazer origem/principal  # Trazer sem aplicar
$ bichão puxar origem/principal   # Puxar para aplicar mudanças

# Fazer mudanças e confirmar
$ bichão confirmar -m "Adicionar validação de email"
$ bichão confirmar -m "Corrigir erro na autenticação"

# Esmagar confirmações antes de empurrar
$ bichão rebasear -i HEAD~2
$ bichão esmagar

# Empurrar para o repositório remoto
$ bichão empurrar origem feature/nova-funcionalidade

# Criar um pedido de integração e mesclar
# (interface do GitHub/GitLab/etc)
```

## Contribuições

Se você tem sugestões de melhores termos em português, ou encontrou problemas com as propostas atuais, sinta-se livre para abrir [chamados](https://github.com/mpalu/git-em-portugues/issues) ou enviar pedidos de integração!

## Referências

- Inspirado em [git-pa-svenska](https://github.com/bjorne/git-pa-svenska) - Versão em sueco
- Documentação oficial do Git: https://git-scm.com/doc
