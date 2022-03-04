DOTFILES_EXCLUDES := .DS_Store .git
DOTFILES_TARGET   := $(wildcard .??*) bin
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	ln -sfnv $(PWD)/.Brewfile $(HOME)/.Brewfile
	brew bundle dump --global --force
	fisher install reitzig/sdkman-for-fish@v1.4.0
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)
