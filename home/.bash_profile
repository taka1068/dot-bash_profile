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

### aliases

alias ls='ls -F'
alias rm='rm -i'
alias mv='mv -i'
alias emacs='emacs -nw'
alias tree='tree -F'
alias myc='clang -Wall -Wextra -std=c11'


