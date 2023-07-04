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
