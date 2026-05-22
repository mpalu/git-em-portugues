#!/usr/bin/env bash
# instalar.sh — Configura os aliases do Git em Português
# Compatível com git >= 2.54.0 (sintaxe .command para suporte a Unicode)
# e com versões antigas (sintaxe clássica como fallback)

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

titulo() { echo -e "\n${CYAN}$1${NC}"; }
ok()     { echo -e "  ${GREEN}✓${NC} $1"; }
aviso()  { echo -e "  ${YELLOW}⚠${NC} $1"; }

# Detecta versão do git
versao_git=$(git --version | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -1)
major=$(echo "$versao_git" | cut -d. -f1)
minor=$(echo "$versao_git" | cut -d. -f2)
patch=$(echo "$versao_git" | cut -d. -f3)

# git >= 2.54.0 suporta Unicode nativo em nomes de alias (via .command)
if [ "$major" -gt 2 ] || { [ "$major" -eq 2 ] && [ "$minor" -ge 54 ]; }; then
    SINTAXE_NOVA=true
    titulo "Git $versao_git detectado — usando sintaxe moderna (.command) com suporte a Unicode"
else
    SINTAXE_NOVA=false
    titulo "Git $versao_git detectado — usando sintaxe clássica (sem acentos nos alias)"
    aviso "Atualize para git >= 2.54.0 para suporte completo a Unicode em aliases"
fi

configurar_alias() {
    local nome="$1"
    local comando="$2"

    if [ "$SINTAXE_NOVA" = true ]; then
        git config --global "alias.${nome}.command" "$comando"
    else
        git config --global "alias.${nome}" "$comando"
    fi
    ok "alias '$nome' → '$comando'"
}

titulo "Configurando aliases de verbos..."
configurar_alias "puxar"      "pull"
configurar_alias "empurrar"   "push"
configurar_alias "trazer"     "fetch"
configurar_alias "ramificar"  "branch"
configurar_alias "ramo"       "branch"
configurar_alias "confirmar"  "commit"
configurar_alias "emendar"    "commit --amend"
configurar_alias "rebasear"   "rebase"
configurar_alias "mesclar"    "merge"
configurar_alias "esmagar"    "squash"
configurar_alias "guardar"    "stash"
configurar_alias "etiquetar"  "tag"
configurar_alias "marcar"     "tag"
configurar_alias "apanhar"    "cherry-pick"
configurar_alias "culpar"     "blame"
configurar_alias "reverter"   "revert"
configurar_alias "voltar"     "reset"
configurar_alias "verificar"  "checkout"
configurar_alias "clonar"     "clone"
configurar_alias "adicionar"  "add"
configurar_alias "bissetar"   "bisect"

titulo "Configurando aliases úteis..."
configurar_alias "log-decorado"   "log --oneline --decorate --graph --all"
configurar_alias "status-curto"   "status --short"
configurar_alias "historico"      "log"
configurar_alias "diferenca"      "diff"
configurar_alias "comparar"       "diff"
configurar_alias "ramos"          "branch -a"
configurar_alias "ramos-locais"   "branch -l"
configurar_alias "etiquetas"      "tag -l"
configurar_alias "sincronia"      "pull --rebase"
configurar_alias "limpar"         "clean -fd"
configurar_alias "descartar"      "checkout --"
configurar_alias "remoto"           "remote"
configurar_alias "renomear-remoto"  "remote rename"
configurar_alias "remotos"          "remote -v"

# Aliases com acento: só na sintaxe nova
if [ "$SINTAXE_NOVA" = true ]; then
    titulo "Configurando aliases com caracteres especiais (git >= 2.54.0)..."
    configurar_alias "histórico"  "log"
    configurar_alias "diferença"  "diff"
fi

titulo "Alias de shell (opcional)"
echo ""
echo "  Para usar 'bichão' no lugar de 'git', adicione ao seu ~/.bashrc ou ~/.zshrc:"
echo ""
echo -e "  ${CYAN}alias bichão=git${NC}"
echo ""

echo -e "${GREEN}✓ Git em Português configurado com sucesso!${NC}"
echo ""
echo "  Exemplos:"
echo "    git puxar origem principal"
echo "    git confirmar -m \"Minha mensagem\""
echo "    git empurrar origem meu-ramo"
echo "    git remoto rename origin origem"
echo ""
