if status is-interactive # is-interactive means allowing user input
    and not set -q TMUX
    exec tmux
    # Commands to run in interactive sessions can go here
end

# Minimal fish prompt
function fish_prompt
    set -g __fish_git_prompt_color_branch brmagenta -i # -i Sets italics mode. and uses bright from privded color scheme 
    set -l textcol "#cccccc"

    # Fix to make prompt appear at first line
    if test "$history[1]" != "clear" -a "$prompt_active" = "true"
        echo ""
    end


    set_color $textcol

    # Path information prompt
    echo -n (prompt_pwd)" "

    # Git information prompt
    echo -n (fish_git_prompt | tr -d "() ")" "

    # Node version information prompt
    fish_prompt_node_version

    # Virtual environment prompt
    function __fish_virtualenv_prompt; 
    end

    fish_prompt_env

    set_color normal -o
    echo ""
    echo "❯ "

    set -g prompt_active true
end


# Default preferences
set fish_greeting
set -l prompt_active false # Check if the first prompt has been written

# List Exa Files aliases
alias ela="exa -la --icons"
alias els="exa -lh --icons"
alias eldf="exa -lh --icons -s type"

# Environment variables
export VIRTUAL_ENV_DISABLE_PROMPT=1 # Disables virtual env prompt
export PATH="$HOME/.cargo/bin:$PATH" # Patch to run cargo with fish shell

# Node fisher plugin default version (jorgebucaran/nvm.fish)
set --universal nvm_default_version v18.19.0

