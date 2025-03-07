if status is-interactive
    and not set -q TMUX
    exec tmux

end

set fish_greeting

source ~/.config/fish/functions/fish_prompt/fish_prompt.fish
source ~/.config/fish/aliases.fish

# Default preferences
set --universal nvm_default_version v22.13.1

# fzf-lua fix https://github.com/ibhagwan/fzf-lua/issues/1243#issuecomment-2168891260
export XDG_RUNTIME_DIR=$HOME/.cache/

# Environment variables
export VIRTUAL_ENV_DISABLE_PROMPT=1 # Disables virtual env prompt
export PATH="$HOME/.cargo/bin:$PATH" # Patch to run cargo with fish shell
export JAVA_HOME="/usr/lib/jvm/java-1.17.0-openjdk-amd64/"
export STUDIO_JDK="/usr/lib/jvm/java-1.17.0-openjdk-amd64"
export ANDROID_SDK_ROOT="/usr/lib/android-sdk"
export PATH="$PATH:/opt/nvim/"
export PATH="/home/sultan/.config/herd-lite/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
set -gx PATH "$HOME/.local/bin" $PATH

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

zoxide init fish | source
