#! /bin/bash
source ./.env
title="3k runner"
prompt="Pick an option:"
options=("Jedi - Roken" "Bard - Geralt" "??? - Broken" "Bladesinger - Dangerzone" "HardCore - Kent")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do

    case "$REPLY" in

    1 ) tt++ ./char/roken/roken.tin;;
    2 ) tt++ ./char/geralt/geralt.tin;;
    3 ) tt++ ./char/broken/broken.tin;;
    4 ) tt++ ./char/dangerzone/dangerzone.tin;;
    5 ) tt++ ./char/kent/kent.tin;;

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done
