# Load Git completion
alias g='git'
autoload -Uz compinit && compinit
source ~/.git-prompt.sh
setopt PROMPT_SUBST ; PS1='[%c$(__git_ps1 " (%s)")]\$ '
alias venv="source .venv/bin/activate"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
