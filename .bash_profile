# Add git completion to aliases
  __git_complete g __git_main

alias g='git'

##Git aliases
alias gc="git checkout"
alias go="git checkout"
alias gcl="git clone"
alias gb="git branch"
alias gs="git status"
alias gcm="git commit -S -m"
alias ga="git add"
alias gd="git diff --cached"
alias gpm="git push origin master"
alias gp="git pull"
alias gl="git log"
alias gr="git reset HEAD $1"
alias gh="git log --graph --pretty=format:'%Cred%h%Creset %d -%Cblue %s%Creset %Cgreen(%ar) %Cblue<%an>%Creset' --abbrev-commit --date=relative"
## Open 
alias gv="vim `git status --porcelain | awk 'match($1, "M"){print $2}'`"

## Delete all unstaged files
alias gdu= git checkout -- .

