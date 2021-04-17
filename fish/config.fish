# vi mode
fish_vi_key_bindings

# direnv
eval (direnv hook fish)

# alias
alias g   'git'
alias gf  'g f'
alias gs  'g s'
alias gb  'g br'
alias gp  'g p'
alias gco 'g co'
alias gbr 'g brr'
alias gsu 'g su'
alias gcm 'g cm'

# jenv
set -x PATH $HOME/.jenv/bin $PATH

# pyenv
if eval (command -v pyenv 1>/dev/null 2>&1)
  pyenv init - | source
end
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# stack
# curl -sSL https://get.haskellstack.org/ | sudo sh
set -x PATH $HOME/.local/bin $PATH
