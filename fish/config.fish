if status is-interactive # is-interactive means allowing user input
    and not set -q TMUX
    exec tmux
    # Commands to run in interactive sessions can go here
end

# Minimal fish prompt
function fish_prompt
    # set -g __fish_git_prompt_color_branch "#f05d21" -i # -i Sets italics mode. and uses bright from privded color scheme 
    set -g __fish_git_prompt_color_branch "#058f78" -i # -i Sets italics mode. and uses bright from privded color scheme 
    # set -g __fish_git_prompt_color_branch brred -i # -i Sets italics mode. and uses bright from privded color scheme 
    set -l textcol "#f2f2f2"

    # Fix to make prompt appear at first line
    if test "$history[1]" != "clear" -a "$history[1]" != "cl" -a "$prompt_active" = "true"
        echo ""
    end


    set_color $textcol

    # Path information prompt
    set current_dir (pwd)
    set user_name "/home/$(whoami)"
    # echo "Current dir:" (pwd)
    # echo "user name:" $user_name
    if test "$current_dir" = $user_name
        echo -n "~"
    else 
        echo -n (prompt_pwd)
    end
    # echo -n (pwd)
    set_color normal -o

    # Git information prompt
    echo -n (fish_git_prompt | tr -d "() ")" "

    # Node version prompt
    fish_prompt_node_version

    # Virtual environment prompt
    set_color normal -o
    fish_prompt_env

    echo ""
    echo "❯ "

    set -g prompt_active true
end


# Default preferences
set fish_greeting # Disables fish greeting message
set -l prompt_active false # Check if the first prompt has been written

# List Exa Files aliases
# alias ela="exa -la --icons"
# alias els="exa -lh --icons"
# alias eldf="exa -lh --icons -s type"
alias els="exa -a -h -1 --icons"
alias eld="exa -a -h -1 --icons --group-directories-first"

alias cl="clear"


# Environment variables
export VIRTUAL_ENV_DISABLE_PROMPT=1 # Disables virtual env prompt
export PATH="$HOME/.cargo/bin:$PATH" # Patch to run cargo with fish shell
export JAVA_HOME="/usr/lib/jvm/java-1.17.0-openjdk-amd64/"
export STUDIO_JDK="/usr/lib/jvm/java-1.17.0-openjdk-amd64"
export ANDROID_SDK_ROOT="/usr/lib/android-sdk"
export PATH="$PATH:/opt/nvim/"

export PATH="$HOME/.local/go/bin:$PATH"


# export GOPATH="$HOME/go"
# export GOMODCACHE="$GOPATH/pkg/mod"

# export PATH="$PATH:$(go env GOPATH)/bin"

# export PATH="$HOME/go/bin:/usr/local/go/bin:$PATH"

# Node fisher plugin default version (jorgebucaran/nvm.fish)
# set --universal nvm_default_version v18.19.0
set --universal nvm_default_version v20.16.0

