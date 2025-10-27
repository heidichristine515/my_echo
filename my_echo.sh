"""
my_echo.sh
Heidi Blank
10/26/25
This program is designed to mimic the echo command 
and the two echo flags, -n, which gets rid of the trailing lines
and -E, which doesn't interpret backslash escapes.
"""

# -n: no trailing newline
# -E: don't interpret backslash escapes (\n, \t, etc.)

potential_flag=$1

if [ "$potential_flag" = "-n" ]; then

    for arg in "${@:2}"; do
        printf "%s " "$arg"
    done
        

elif [ "$potential_flag" = "-E" ]; then
    
    for arg in "${@:2}"; do
        printf "%s " "$arg"
    done
    printf "\n"


else

    for arg in "$@"; do
        printf "%s " "$arg"
    done
    printf "\n"

fi
