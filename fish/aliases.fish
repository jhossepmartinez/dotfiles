# Eza
alias l="eza --icons --group-directories-first"
alias ll="eza --group --icons --group-directories-first --long"
alias la="eza --group --icons --group-directories-first --long --all"

# Git
alias gco="git checkout"
alias gcb="git checkout -b"
alias gpo="git pull origin"
alias gb="git branch"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -n 10"
alias gla="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gri="git rebase -i"

# Utilities
alias cl="clear"
alias clz="find . -name '*:Zone.Identifier' -type f -delete"
alias rmswap="rm -rf $HOME/.local/state/nvim/swap"
# alias lalias="alias | sed 's/\\\\//g' "

# Python
alias act="source ./venv/bin/activate.fish"
alias dact="deactivate"

# Shell
alias src="source ~/.config/fish/config.fish"
