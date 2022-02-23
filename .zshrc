# (The below instructions are intended for common
# shell setups. See the README for more guidance
# if they don't apply and/or don't work for you.)

# Add pyenv executable to PATH and
# enable shims by adding the following
# to ~/.profile and ~/.zprofile:

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
alias g='git'
eval "$(rbenv init -)"
# Load Git completion
autoload -Uz compinit && compinit
# Git prompt
source ~/.git-prompt.sh
setopt PROMPT_SUBST ; PS1='[%c$(__git_ps1 " (%s)")]\$ '

alias venv="source venv/bin/activate"
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"



# Use TTP GPG
export GPG_TTY=$(tty)

autoload -U bashcompinit
bashcompinit

# Load the custom .*-pass-* I have
for pass_dir in ~/.*-*-pass; do
  __tmp_pass_name=$(basename -- "$pass_dir" | sed 's/^\.*//')

  # create a custom pass alias to override the PASSWORD_STORE_DIR env variable
  alias $__tmp_pass_name="PASSWORD_STORE_DIR=$pass_dir pass"

  unset __tmp_pass_name
done
