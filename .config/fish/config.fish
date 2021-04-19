#!/usr/bin/fish
# Env Vars
set system_logo ""
set greet_msg (echo -e "\e[34m$system_logo \e[0m") \
        (echo -e "\e[1;32m"(uname -rn)"\e[0m" \
                 "\e[1;36m"(date +"%r")"\e[0m" \
                 "\e[1;37m"(uptime -p)"\e[0m")

function fish_greeting
    echo $greet_msg
    echo ($HOME/Scripts/awk-color-bar)
end

# Bass
bass source /etc/profile
# bass source /usr/share/nvm/init-nvm.sh
bass source $HOME/.alias_profile
bass source $HOME/.env_profile

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/stanley/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Init Starship
starship init fish | source
