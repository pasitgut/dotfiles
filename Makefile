install:
	sudo dnf install -y $(grep -v '^#' packages.txt)

tools:
	bash install-tools.sh

stow:
	stow *

setup: install stow
