### Setup bash prompt
# http://bashrcgenerator.com/
# https://www.ibm.com/developerworks/linux/library/l-tip-prompt/
export PS1="\[\e[31;1m\]\w \$ \[\e[0m\]"

export PROMPT_DIRTRIM=3

alias ls='ls -F'
alias rm='rm -i'
alias mv='mv -i'
alias emacs='emacs -nw'
alias tree='tree -F'
alias myc='clang -Wall -Wextra -std=c11'
