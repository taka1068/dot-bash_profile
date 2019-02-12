### Setup bash prompt

# download from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash

# download from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

export PS1='\[\e[31;1m\]\w$(__git_ps1 " (%s)") \$ \[\e[0m\]'
export PROMPT_DIRTRIM=3


alias ls='ls -F'
alias rm='rm -i'
alias mv='mv -i'
alias emacs='emacs -nw'
alias tree='tree -F'
alias myc='clang -Wall -Wextra -std=c11'
