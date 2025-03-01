if status is-interactive
    and not set -q TMUX
    exec tmux

end

source ~/.config/fish/aliases/eza.fish

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
    if test "$current_dir" = $user_name
        echo -n "~"
    else 
        echo -n (prompt_pwd)" "
    end
    set_color normal -o

    # Git information prompt
    echo -n (fish_git_prompt | tr -d "() ")" "

    # Node version prompt
    fish_prompt_node_version

    # Virtual environment prompt
    set_color normal -o
    fish_prompt_env

    echo -e "\n❯ "

    set -g prompt_active true
end


# Default preferences
set fish_greeting
set --universal nvm_default_version v22.13.1

# Eza 
# alias l="eza --icons --group-directories-first"
# alias ll="eza --group --icons --group-directories-first --long"

# Utilities
alias clz="find . -name '*:Zone.Identifier' -type f -delete"

# functions
function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end


# Environment variables
export VIRTUAL_ENV_DISABLE_PROMPT=1 # Disables virtual env prompt
export PATH="$HOME/.cargo/bin:$PATH" # Patch to run cargo with fish shell
export JAVA_HOME="/usr/lib/jvm/java-1.17.0-openjdk-amd64/"
export STUDIO_JDK="/usr/lib/jvm/java-1.17.0-openjdk-amd64"
export ANDROID_SDK_ROOT="/usr/lib/android-sdk"
export PATH="$PATH:/opt/nvim/"
export PATH="/home/sultan/.config/herd-lite/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"

# fzf-lua fix https://github.com/ibhagwan/fzf-lua/issues/1243#issuecomment-2168891260
export XDG_RUNTIME_DIR=$HOME/.cache/

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"



# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/sultan/google-cloud-sdk/path.fish.inc' ]; . '/home/sultan/google-cloud-sdk/path.fish.inc'; end


# pnpm
set -gx PNPM_HOME "/home/sultan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
