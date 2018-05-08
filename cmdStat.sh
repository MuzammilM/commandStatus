execute()
{
        value=$1
        if [[ $value == "exit" ]]
        then
                shift;
        else
                :
        fi

        if $*
        then
                :
        else
                echo "Command "$*" failed to execute"
                if [[ $value == "exit" ]]
                then
                        exit;
                else
                        :
                fi
        fi

}

execute $*
