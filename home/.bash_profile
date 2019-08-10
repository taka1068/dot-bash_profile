### Configure git completion

# download from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash
# download from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

### PS1

__PS_RED='\[\e[31;1m\]'
__PS_GREEN='\[\e[32;1m\]'
__PS_CLEAR='\[\e[0m\]'

export PS1="${__PS_RED}\w${__PS_GREEN}\$(__git_ps1 \" (%s)\")\n"
export PS1="${PS1}${__PS_RED}$ ${__PS_CLEAR}"
export PROMPT_DIRTRIM=3
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

### aliases

alias emacs='__emacs'
alias ema='__ema'
alias ekill='emacsclient -e "(kill-emacs)"'
alias ls='ls -F'
alias rm='rm -i'
alias mv='mv -i'
alias tree='tree -F'
alias myc='clang -Wall -Wextra -std=c11'

### path

#### uconv
export export PATH="/usr/local/opt/icu4c/bin:$PATH"
export export PATH="/usr/local/opt/icu4c/sbin:$PATH"

### misc

if command -v rbenv >/dev/null; then
    eval "$(rbenv init -)"
fi

if command -v pyenv >/dev/null; then
    eval "$(pyenv init -)"
fi

__emacs() {
    if [ -z "$1" ]; then
        emacsclient -a -t -c
    elif [ ! -f "$1" ]; then
        touch "$1"
        emacsclient -a -t "$1"
    else
        emacsclient -a -t "$1"
    fi
}

__ema() {
    if [ -z "$1" ]; then
        open -a emacs
    elif [ ! -f "$1" ]; then
        touch "$1"
        open -a emacs "$1"
    else
        open -a emacs "$1"
    fi
}


