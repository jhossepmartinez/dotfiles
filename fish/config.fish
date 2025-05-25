if status is-interactive
    and not set -q TMUX
    exec tmux
end

source ~/.config/fish/functions/fish_prompt/fish_prompt.fish
source ~/.config/fish/aliases.fish

# Default preferences
set fish_greeting
set --universal nvm_default_version v22.13.1
set VIRTUAL_ENV_DISABLE_PROMPT 1 # Disables virtual env prompt
set -gx MANPAGER "nvim -c 'Man!'"

# fzf-lua fix https://github.com/ibhagwan/fzf-lua/issues/1243#issuecomment-2168891260
set -gx XDG_RUNTIME_DIR "$HOME/.cache/"

# Environment variables
set -gx PATH $PATH "$HOME/.cargo/bin" # Patch to run cargo with fish shell
set -gx PATH $PATH "/opt/nvim/" 
set -gx PATH $PATH "/home/sultan/.config/herd-lite/bin"
set -gx PATH $PATH "$HOME/.local/go/bin"
set -gx PATH $PATH "$HOME/.local/bin"
set -gx PATH $PATH "/mnt/c/Windows/"
set -gx PATH $PATH "$HOME/julia-1.8.1/bin"

# Android 
set -gx ANDROID_HOME $HOME/Android
set -gx ANDROID_SDK_ROOT $ANDROID_HOME

set -gx PATH /usr/bin /bin $PATH  # Critical system paths
set -gx PATH $PATH $JAVA_HOME/bin
set -gx PATH $PATH $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $ANDROID_HOME/cmdline-tools/latest/bin

set -Ux JAVA_HOME /usr/lib/jvm/java-21-openjdk-amd64
set -Ux PATH $JAVA_HOME/bin $PATH

# bun
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH "$BUN_INSTALL/bin:$PATH"

# pnpm
set -gx PNPM_HOME "/home/sultan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

zoxide init fish | source
