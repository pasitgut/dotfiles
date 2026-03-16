install:
	sudo dnf install -y $(shell grep -v '^#' packages.txt) --skip-unavailable

tools:
	bash install-tools.sh

stow:
	stow *

setup: install stow
