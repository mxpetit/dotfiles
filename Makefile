.PHONY: all link nvim

all: link nvim

link:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git*"); do \
        f=$$(basename $$file); \
        ln -sfn $$file $(HOME)/$$f; \
    done; \

nvim:
	ln -sfn $(PWD)/nvim/init.vim $(HOME)/.config/nvim/init.vim
