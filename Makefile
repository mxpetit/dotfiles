.PHONY: all dotfiles vim

LN_CMD=ln -sfn

all: link

link:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git"); do \
        f=$$(basename $$file); \
        ln -sfn $$file $(HOME)/$$f; \
    done; \

vim:
	$(LN_CMD) $(PWD)/.vimrc $(HOME)/.vimrc
