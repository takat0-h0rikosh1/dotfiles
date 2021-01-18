source ~/.bashrc

# vi mode
set fish_plugins autojump vi-mode

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

# nodebrew setting
set -x PATH $HOME/.nodebrew/current/bin $PATH

# review
set -x PATH /Users/t_horikoshi/project/review/bin $PATH

# ffmpeg, ffprove
set -x PATH /Users/t_horikoshi/.ffmpeg $PATH
set -x PATH /Users/t_horikoshi/.ffprobe $PATH

# github
ssh-add -K ~/.ssh/github
set -x PATH /Users/t_horikoshi/.cabal/bin/ /Users/t_horikoshi/.ghcup/bin/ $PATH 

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
#export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# go
eval (goenv init - | source)
set -x GOPATH (go env GOPATH)
set -x PATH (go env GOPATH)/bin $PATH

# haskell-ide-engine
set -x PATH $HOME/.local/bin $PATH

# dd.mypage
ssh-add -K ~/.ssh/easimon.bastion.root

# required brew
export PATH="/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/t_horikoshi/google-cloud-sdk/path.fish.inc' ]; . '/Users/t_horikoshi/google-cloud-sdk/path.fish.inc'; end

# pyenv
if eval (command -v pyenv 1>/dev/null 2>&1)
  pyenv init - | source
end
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
