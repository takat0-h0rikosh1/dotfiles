# vi mode
fish_vi_key_bindings

# omf bobthefish
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_color_scheme default

# direnv
eval (direnv hook fish)

# alias
alias mk='touch'
alias g 'git'
alias gs 'git s'
alias gco 'git co'
alias gf 'git f'
alias gb 'git br'
alias gbr 'git brr'
alias gsu 'g su'
alias digdag '/usr/local/bin/digdag'
alias tf 'terraform'
alias clasp node_modules/.bin/clasp

# jenv
set -x PATH $HOME/.jenv/bin $PATH

# github
ssh-add -K ~/.ssh/github

# pyenv
if eval (command -v pyenv 1>/dev/null 2>&1)
  pyenv init - | source
end
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# stack
set -x PATH $HOME/.local/bin $PATH
