# Variables
BIN_DIR = $(HOME)/.local/bin
LIB_DIR = $(HOME)/.local/share/differentunic-dotfiles-installer

.PHONY: install uninstall test

install:
	@echo "Installing differentunic-dotfiles-installer..."
	mkdir -p $(BIN_DIR)
	mkdir -p $(LIB_DIR)
	
	@echo "Installing binary..."
	install -m 755 bin/differentunic-dotfiles-installer $(BIN_DIR)/
	
	@echo "Installing libraries..."
	install -m 644 lib/*.sh $(LIB_DIR)/
	@echo "Done! Make sure $(BIN_DIR) is in your PATH."

uninstall:
	rm -f $(BIN_DIR)/differentunic-dotfiles-installer
	rm -rf $(LIB_DIR)
	@echo "Removed differentunic-dotfiles-installer."

test:
	bats tests/