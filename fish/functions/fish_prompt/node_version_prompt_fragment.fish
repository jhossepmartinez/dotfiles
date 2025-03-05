function node_version_prompt_fragment
    if test -e "package.json" || count *.js > /dev/null
        set_color "71c450"
        set -l is_lts (node -pe 'process.release.lts !== "undefined" ? true : false')
        echo -n "󰎙 "(node -v | sed 's/v//')" "

        if test "$is_lts" = "true"
            echo -n "LTS "
        end

        set_color normal
    end
end
