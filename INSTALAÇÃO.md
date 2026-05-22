# Guia de Instalação - Git em Português

## Opção 1: Configuração Manual Comando por Comando

Abra seu terminal e execute cada comando:

```bash
# Atalhos principais
git config --global alias.puxar pull
git config --global alias.empurrar push
git config --global alias.trazer fetch
git config --global alias.ramificar branch
git config --global alias.ramo branch
git config --global alias.confirmar commit
git config --global alias.rebasear rebase
git config --global alias.mesclar merge
git config --global alias.esmagar squash
git config --global alias.guardar stash
git config --global alias.etiquetar tag
git config --global alias.marcar tag
git config --global alias.apanhar "cherry-pick"
git config --global alias.emendar "commit --amend"
git config --global alias.culpar blame
git config --global alias.reverter revert
git config --global alias.voltar reset
git config --global alias.verificar checkout
git config --global alias.clonar clone
git config --global alias.adicionar add
git config --global alias.bissetar bisect
git config --global alias.remoto remote
git config --global alias.renomear-remoto "remote rename"

# Atalhos úteis adicionais
git config --global alias.log-decorado "log --oneline --decorate --graph --all"
git config --global alias.status-curto "status --short"
git config --global alias.historico log
git config --global alias.diferenca diff
git config --global alias.comparar diff
git config --global alias.ramos "branch -a"
git config --global alias.ramos-locais "branch -l"
git config --global alias.etiquetas "tag -l"
git config --global alias.sincronia "pull --rebase"
git config --global alias.limpar "clean -fd"
git config --global alias.descartar "checkout --"
git config --global alias.remotos "remote -v"
```

> **Nota**: Se você usa git ≥ 2.54.0, pode substituir `alias.nome` por `alias.nome.command` para suporte a Unicode
> nos nomes dos atalhos (ex: `diferença`, `histórico` com acento).

## Opção 2: Editar .gitconfig Diretamente

1. Abra o arquivo `~/.gitconfig` no seu editor favorito:

```bash
nano ~/.gitconfig
# ou
vim ~/.gitconfig
```

2. Cole o conteúdo do arquivo `.gitconfig-exemplo` fornecido neste repositório

3. Salve o arquivo

## Opção 3: Script de Instalação Automática

O repositório inclui o script `instalar.sh` que configura tudo automaticamente:

```bash
# Após clonar o repositório
chmod +x instalar.sh
./instalar.sh
```

O script detecta a versão do git e usa a sintaxe correta:
- **git ≥ 2.54.0**: `alias.nome.command` (suporte completo a Unicode — acentos, cedilha)
- **git < 2.54.0**: `alias.nome` (sintaxe clássica, sem caracteres especiais nos nomes dos atalhos)

Ou execute diretamente sem clonar:

```bash
curl -fsSL https://raw.githubusercontent.com/mpalu/git-em-portugues/main/instalar.sh | bash
```

## Opção 4: Atalho de Shell (Bash/Zsh)

Adicione esta linha ao seu arquivo `~/.bashrc` ou `~/.zshrc`:

```bash
alias bichão=git
```

Depois execute:

```bash
source ~/.bashrc
# ou
source ~/.zshrc
```

Agora você pode usar `bichão` diretamente:

```bash
bichão ramificar nova-funcionalidade
bichão confirmar -m "Minha mensagem"
bichão empurrar origem nova-funcionalidade
```

## Verificar Configuração

Para verificar se os atalhos foram instalados corretamente:

```bash
git config --list | grep alias
```

Você também pode ver a seção `[alias]` do seu `~/.gitconfig`:

```bash
cat ~/.gitconfig
```

## Exemplos de Uso

Após configurar, você pode usar os novos atalhos:

```bash
# Em vez de: git pull origem principal
git puxar origem principal

# Em vez de: git commit -m "Mensagem"
git confirmar -m "Mensagem"

# Em vez de: git push origem funcionalidade
git empurrar origem funcionalidade

# Ver histórico decorado
git log-decorado

# Status resumido
git status-curto
```

## Remover Atalhos

Se você quiser remover qualquer atalho, use:

```bash
git config --global --unset alias.puxar
git config --global --unset alias.empurrar
# ... e assim por diante
```

Ou remova manualmente a seção `[alias]` no seu `~/.gitconfig`.

## Suporte

Encontrou problemas? Abra um [chamado](../../issues) neste repositório!
