function fish_prompt_node_version
    # Logic to find any node dependent file
    set -l allow_prompt false

    # Check for .js files
    set -l jsfiles *.js
    if set -q jsfiles[1]
        set allow_prompt true
    end

    # Check if package.json file exists
    if test -e "package.json"
        set allow_prompt true
    end

    if $allow_prompt
        set -l nodeversioncolor "#539e43"
        set_color $nodeversioncolor
        echo -n "󰎙 "(node -v | sed 's/v//')" "
        set_color normal -o
    end
end