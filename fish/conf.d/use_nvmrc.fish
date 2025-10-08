function set_nvm --on-event fish_prompt
    string match -q $PWD $PREV_PWD; and return 1
    string match -eq $PREV_PWD $PWD; and not test -e '.nvmrc'; and return 1
    set -g PREV_PWD $PWD

    if test -e '.nvmrc'

        # if we find .nvmrc, run nvm use
        nvm use

        # and remember that we used that node
        set NVM_DIRTY true

    else if not string match $NVM_DIRTY true

        # if we have set nvm and have stepped out of that repo
        # go back to default node, if not already on it
        not string match -eq (nvm current) "$nvm_default_version"; and nvm use default

        # and clear the flag
        set NVM_DIRTY
    end
end
