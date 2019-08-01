DOTFILES="${HOME}/.dotfiles"
SCRIPTS="${DOTFILES}/scripts"

all: neovim

install:
	stow --restow --ignore ".DS_Store" --target="$(HOME)" --dir="$(DOTFILES)" files

neovim:
	brew install neovim

.PHONY: all install neovim
