### completion

# brew install bash-completion@2
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# download from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
[[ -f ~/.git-completion.bash ]] && source ~/.git-completion.bash
# download from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
[[ -f ~/.git-prompt.sh ]] && source ~/.git-prompt.sh

### PS1

PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXIT="$?"
    local PS_RED='\[\e[31;1m\]'
    local PS_GREEN='\[\e[32;1m\]'
    local PS_YELLOW='\[\e[33;1m\]'
    local PS_CLEAR='\[\e[0m\]'

    local cwd=$(pwd | sed "s|$HOME|~|")

    if command -v __git_ps1 >/dev/null; then
        PS1="${PS_RED}\h:\w${PS_GREEN}\$(__git_ps1 \" (%s)\") ${PS_YELLOW}${EXIT}\n"
    else
        PS1="${PS_RED}\h:\w ${PS_YELLOW}${EXIT}\n"
    fi

    export PS1="${PS1}${PS_RED}$ ${PS_CLEAR}"
    echo -n -e "\033]0;${cwd}\007"
}

export PROMPT_DIRTRIM=3
export PAGER="$(which less) -is"
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

### aliases

alias emacs='__emacs'
alias ema='__ema'
alias ekill='emacsclient -e "(kill-emacs)"'
alias estart='command emacs --daemon'
if command -v open >/dev/null; then
    alias ema='__ema'
fi
alias ls='ls -F'
alias rm='rm -i'
alias mv='mv -i'
alias tree='tree -F'

### history
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE=history*:ls

### misc

if command -v rbenv >/dev/null; then
    eval "$(rbenv init -)"
fi

if command -v pyenv >/dev/null; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
fi


### path

android_sdk_tools_path="$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$android_sdk_tools_path"

#### avoid Ctrl-s collision
stty -ixon

__emacs() {
    if [ -z "$1" ]; then
        emacsclient -a -t -c
    elif [ ! -f "$1" ]; then
        echo "" > "$1"
        emacsclient -a -t "$1"
    else
        emacsclient -a -t "$1"
    fi
}



__ema() {
    if [ -z "$1" ]; then
        open -a emacs
    elif [ ! -f "$1" ]; then
        echo "" > "$1"
        open -a emacs "$1"
    else
        open -a emacs "$1"
    fi
}


