source ~/.config/fish/functions/fish_prompt/node_version_prompt_fragment.fish
function fish_prompt
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status
    set -l normal (set_color normal)
    set -l color_cwd $fish_color_cwd
    set -g fish_color_status red

    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color --bold $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    set -l separator_fill (string repeat -n (math $COLUMNS - 2) "─")
    set -l separator_line (test "$history[1]" != "clear" -a "$history[1]" != "cl" -a "$first_prompt" = "true"; and echo "\n\033[2m$separator_fill\033[0m\n\n"; or echo "")

    set -l virtual_env_prompt (basename "$VIRTUAL_ENV")

    echo -e -n -s $separator_line \
        (set_color $color_cwd) (prompt_pwd) \
        (set_color normal) (fish_vcs_prompt) " " \
        (node_version_prompt_fragment) \
        $virtual_env_prompt \
        $prompt_status "\n❯ "

    set -g first_prompt true
end

