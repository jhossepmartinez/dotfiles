function fish_prompt
    set current_dir (pwd)
    set home_route "/home/$(whoami)"

    if test "$history[1]" != "clear" -a "$history[1]" != "cl"
        echo ""
    end

    if test "$current_dir" = $home_route
        echo "~"
    else 
        echo (prompt_pwd)" "
    end

    echo "❯ "
end
