# Add git completion to aliases
  __git_complete g __git_main

alias g='git'

# Add git status to prompt
export PS1="\\w\$(__git_ps1 '(%s)') \$ "
