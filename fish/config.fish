if status is-interactive
    # Basic fish prompt
    function fish_prompt
	echo ""
	echo (prompt_pwd) (fish_git_prompt)
	echo "❯ "
    end
    # Commands to run in interactive sessions can go here
end

# Default preferences
set fish_greeting

# List Exa Files aliases
alias ela="exa -la --icons"
alias els="exa -lh --icons"
alias eldf="exa -lh --icons -s type"
