# vi mode
fish_vi_key_bindings

# omf bobthefish
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_color_scheme default

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
status --is-interactive; and source (jenv init -|psub)

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source
set -x PATH $PYENV_ROOT/shims $PATH

# poetry
set -x PATH $HOME/.poetry/bin $PATH

# stack
# curl -sSL https://get.haskellstack.org/ | sudo sh
set -x PATH $HOME/.local/bin $PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/t_horikoshi/google-cloud-sdk/path.fish.inc' ]; . '/Users/t_horikoshi/google-cloud-sdk/path.fish.inc'; end

# python3.8系だとgsutilが動かないので3.7を参照するワークアラウンド
export CLOUDSDK_PYTHON=python3

# nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"
