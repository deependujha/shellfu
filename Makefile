.PHONY: all clean setup

all:
	@echo "Building the project..."

clean:
	@echo "Cleaning up..."

setup:
	@echo "Setting up the project..."
	@if [ -f ~/.zshrc ]; then \
		cat command.txt >> ~/.zshrc; \
		source ~/.zshrc; \
		echo "Setup complete."; \
	elif [ -f ~/.bashrc ]; then \
		cat command.txt >> ~/.bashrc; \
		source ~/.bashrc; \
		echo "Setup complete."; \
	else \
		echo "Neither .zshrc nor .bashrc exists."; \
	fi
