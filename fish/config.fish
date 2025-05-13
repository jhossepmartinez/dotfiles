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
set -gx JAVA_HOME "/usr/lib/jvm/java-1.17.0-openjdk-amd64/"
set -gx STUDIO_JDK "/usr/lib/jvm/java-1.17.0-openjdk-amd64"
set -gx ANDROID_SDK_ROOT "/usr/lib/android-sdk"
set -gx PATH "$HOME/.cargo/bin" $PATH # Patch to run cargo with fish shell
set -gx PATH "/opt/nvim/" $PATH
set -gx PATH "/home/sultan/.config/herd-lite/bin" $PATH
set -gx PATH "$HOME/.local/go/bin" $PATH
set -gx PATH "$HOME/.local/bin" $PATH
set -gx PATH "/mnt/c/Windows/" $PATH

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
