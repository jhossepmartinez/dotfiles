function fish_prompt_env
    if test -n "$VIRTUAL_ENV" # Checks if VIRTUAL_ENV variable is set
        echo -n "🐍 "
        echo -n (basename $VIRTUAL_ENV | tr -d "()")" "
    end
end
