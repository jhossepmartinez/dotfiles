if status is-interactive
	# Commands to run in interactive sessions can go here
	and not set -q TMUX
	exec tmux
end

# Check if starship prompt is installed
if ! command -v starship &> /dev/null
    echo "Missing starship shell"
    exit 1
else
    starship init fish | source
end

# Check if exa is installed
# Exa is a replace for ls
if ! command -v exa &> /dev/null
    echo "Missing exa. Installing..."
    sudo apt install exa
end

# List Exa Files aliases
alias ela="exa -la --icons"
alias els="exa -lh --icons"
alias eldf="exa -lh --icons -s type"

test -s /home/jhossep/.nvm-fish/nvm.fish; and source /home/jhossep/.nvm-fish/nvm.fish
