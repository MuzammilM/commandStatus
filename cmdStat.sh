#Author: MuzammilM
#Checks if a command executes successfully via exit status
COLOR='\033[0;31m'
reset=`tput sgr0`

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
                echo "${COLOR}Command "$*" failed to execute${reset}"
                if [[ $value == "exit" ]]
                then
                        exit;
                else
                        :
                fi
        fi

}

execute $*
