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
        # set -l nodeversioncolor "#539e43"
        set -l nodeversioncolor "#71c450"
        set_color $nodeversioncolor
        echo -n "󰎙 "(node -v | sed 's/v//')" "
        
        # Check if its LTS version
        set -l lts (node -pe process.release.lts)
        if test -n "$lts"
            echo -n "LTS"
        end

        set_color normal -o
    end
end
