.PHONY: all clean setup

all:
	@echo "Building the project..."

clean:
	@echo "Cleaning up..."

setup:
	@echo "Setting up the project..."
	@if [ -f ~/.zshrc ]; then \
		cat command.txt >> ~/.zshrc; \
		echo "Setup complete."; \
		echo "Please restart your terminal or run 'source ~/.zshrc' to apply changes."; \
	elif [ -f ~/.bashrc ]; then \
		cat command.txt >> ~/.bashrc; \
		echo "Setup complete."; \
		echo "Please restart your terminal or run 'source ~/.bashrc' to apply changes."; \
	else \
		echo "Neither .zshrc nor .bashrc exists."; \
	fi
