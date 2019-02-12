### Configure git completion

# download from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash
# download from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

### PS1

export PS1='\[\e[31;1m\]\w \[\e[38;5;3m\]$(__git_ps1 "(%s)") \[\e[36;1m\]$? \[\e[0m\]'
export PROMPT_DIRTRIM=3
export GIT_PS1_SHOWDIRTYSTATE=1

### aliases

alias ls='ls -F'
alias rm='rm -i'
alias mv='mv -i'
alias emacs='emacs -nw'
alias tree='tree -F'
alias myc='clang -Wall -Wextra -std=c11'
