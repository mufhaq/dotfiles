# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000

unsetopt beep
unsetopt notify

setopt autocd
setopt extendedglob
setopt nomatch
setopt append_history
setopt share_history
setopt interactivecomments

# key bindings
bindkey -e
bindkey -M emacs '^[[3;5~' kill-word
bindkey -M emacs '^[[3^' backward-kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey  "^[[3~"  delete-char
bindkey '^[[Z' reverse-menu-complete

function zle-line-init () { echoti smkx }
function zle-line-finish () { echoti rmkx }
if [ $TERM = 'st-256color' ] || [ $TERM = 'alacritty' ]; then
    zle -N zle-line-init
    zle -N zle-line-finish
fi

zstyle :compinstall filename '/home/haq/.zshrc'
zstyle ':completion:*' menu select
#zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

fpath=(~/.config/zsh/plugins/zsh-completions/src/ $fpath)

# autoload
autoload -Uz compinit
compinit
autoload -U select-word-style
select-word-style bash

# themes
source ~/.config/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# plugins
source ~/.config/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_HIGHLIGHT_STYLES[arg0]="fg=blue"
ZSH_HIGHLIGHT_STYLES[comment]='fg=#858585'

alias ls="exa -H -g --icons --sort=type"
alias ll="ls -lh"
alias lla="ll -a"
alias l="lla"
alias etree="exa -T --icons --sort=type"
alias zsh-reload="source ~/.zshrc"
alias reload="exec zsh"
alias view="nvim -R -"

# config for tlmgr
function check_tlmgr() {
    export TEXMFDIST='/usr/share/texmf-dist'
    local check=(pacman -Qs texlive-most ; grep "local" ; grep "texlive-most")
    if [[ -n $check ]]
    then
        alias tlmgr="$TEXMFDIST/scripts/texlive/tlmgr.pl --usermode"
    fi
}
check_tlmgr

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export EDITOR=nvim
export LD_LIBRARY_PATH="/usr/lib/jvm/java-17-openjdk/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/lib/jvm/java-17-openjdk/lib/server:$LD_LIBRARY_PATH"

if type "go" > /dev/null; then
    export GOPATH=$(go env GOPATH)
    export PATH="$GOPATH/bin:$PATH"
fi

print -Pn "\e]0;%~\a"
precmd() { 
    print -Pn "\e]0;%~\a"
}

# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
# source /usr/bin/virtualenvwrapper_lazy.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
