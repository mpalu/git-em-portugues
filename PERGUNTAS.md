# Perguntas Frequentes - Git em Português

## Por que fazer isso?

Git é uma ferramenta essencial na programação, mas sua linguagem é toda em inglês. No dia a dia, misturamos português com inglês ("Portunglês") quando falamos sobre operações Git. Este projeto busca estabelecer uma terminologia consistente e natural em português.

## Por que "puxar" e não "buscar"?

"Puxar" é mais próximo semanticamente de "pull" (trazer algo para perto de você), enquanto "buscar" ou "trazer" já referem-se ao `fetch`. Assim:
- **Trazer** (fetch) = apenas trazer informações do servidor, sem aplicar
- **Puxar** (pull) = trazer E aplicar as mudanças localmente

## E quanto aos comandos na forma longa?

Os comandos na forma longa em inglês continuam funcionando normalmente. Os atalhos são apenas apelidos para tornar a vida mais fácil:

```bash
# Ambos funcionam:
git puxar              # Atalho em português
git pull               # Comando original em inglês
```

## Posso usar isso em um projeto corporativo?

Sim! Os atalhos são apenas configuração local do seu Git. Não afetam confirmações, histórico ou mensagens. Você pode usar atalhos em português enquanto trabalha com repositórios em inglês.

**Importante**: Mensagens de confirmação devem manter-se em inglês (ou a linguagem do projeto) para manter consistência no histórico.

## O que acho de "squash" → "esmagar"?

"Esmagar" é uma tradução poética que capta bem a ideia de combinar múltiplas confirmações em uma só. Alternativas consideradas:
- "Aplanar" (muito técnico)
- "Condensar" (também válido)
- "Esmagar" (mais vivida e memorável)

## E "cherry-pick"?

"Apanhar" é uma tradução criativa que mantém o tom "visual" do original. Alternativas:
- "Selecionar mudanças"
- "Colher mudanças"
- "Apanhar mudanças" ✓

## Como mantenho compatibilidade com equipes?

Como mencionado, os atalhos são locais. Sua equipe pode usar o Git normalmente em inglês enquanto você usa em português. Apenas não force a adoção se não for consensual.

**Dica**: Considere compartilhar este repositório com seu time se todos estiverem interessados!

## E se eu precisar usar um atalho em um script?

Para automação, recomenda-se continuar usando os comandos originais em inglês:

```bash
# ✗ Em scripts, não use atalhos
git puxar

# ✓ Em scripts, use comandos originais
git pull
```

Os atalhos são melhor aproveitados no uso interativo do dia a dia.

## Posso contribuir com sugestões de termos?

Absolutamente! Abra um chamado ou envie um pedido de integração com suas sugestões. Quanto mais português fluente e natural, melhor.

**Critérios para bom termo em português**:
- Natural e compreensível
- Próximo semanticamente do original em inglês
- Evita termos muito técnicos ou obscuros
- Fácil de pronunciar e memorizar

## Como faço para reverter as mudanças?

Você pode remover atalhos específicos:

```bash
git config --global --unset alias.puxar
```

Ou remover a seção inteira do seu `~/.gitconfig`:

```bash
# Ver e editar manualmente
nano ~/.gitconfig
```

## Funciona no Windows?

Sim! O Git no Windows usa o mesmo `~/.gitconfig` (ou `%USERPROFILE%\.gitconfig`). Os comandos são idênticos.

**Para Windows PowerShell**, o atalho de shell seria:

```powershell
Set-Alias -Name bichão -Value git
```

## E no macOS?

Funciona perfeitamente! Use `~/.gitconfig` como em Linux/Unix.

**Para adicionar o atalho de shell**:

```bash
# Adicione ao ~/.zshrc (padrão em Macs modernos)
alias bichão=git

# Depois:
source ~/.zshrc
```

## Há conflito com outros atalhos?

Se você já tem atalhos Git configurados com esses nomes, será necessário removê-los ou renomear. Não há sobrescrita automática; o Git avisará o erro.

## Posso criar atalhos personalizados?

Sim! Você não precisa usar exatamente os nomes propostos. Personalize conforme preferir:

```bash
# Seus próprios atalhos
git config --global alias.p puxar
git config --global alias.e empurrar
```

## Como faço para fazer uma "rebase interativa" agora?

```bash
# Antes: git rebase -i HEAD~3
# Agora:
git rebasear -i HEAD~3

# Ou com atalho ainda mais curto:
git config --global alias.rebasear-i "rebase -i"
git rebasear-i HEAD~3
```

## Há suporte oficial do Git para isso?

Não. Estes são apenas atalhos locais de git e de shell. O Git continua usando inglês internamente. Esta é uma solução de interface para a experiência do usuário.

## Contribuições são bem-vindas?

Sim! Contribuições, sugestões e discussões são muito bem-vindas. Abra um chamado ou um pedido de integração com suas ideias.

---

**Ainda tem dúvidas?** Abra um [chamado](../../issues) neste repositório!
