function fish_prompt
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status
    set -l normal (set_color normal)
    set -l color_cwd $fish_color_cwd
    set -g fish_color_status red

    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color --bold $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    set -l newline_to_add (test "$history[1]" != "clear" -a "$history[1]" != "cl"; and echo "\n"; or echo "")

    echo -e -n -s $newline_to_add (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) " " $prompt_status "\n❯ "
end

