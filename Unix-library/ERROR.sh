#! /bin/bash
tput cup $1 $2
echo "Wrong Input. Try again."
echo "Press any key to continue...>_\b\c"
read answer
exit 0