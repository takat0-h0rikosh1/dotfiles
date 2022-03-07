# homebrew
export PATH="/opt/homebrew/bin:$PATH"

# github
ssh-add --apple-use-keychain ~/.ssh/github

# run fish
fish

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/takato.horikoshi/.sdkman"
[[ -s "/Users/takato.horikoshi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/takato.horikoshi/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.poetry/bin:$PATH"
