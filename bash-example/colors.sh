#! /bin/bash

blackfg="\e[30m";   blackbg="\e[40m"
redfg="\e[31m";     redbg="\e[41m"
greenfg="\e[32m";   greenbg="\e[42m"
yellowfg="\e[33m";  yellowbg="\e[43m"
bluefg="\e[34m";    bluebg="\e[44m"
magentafg="\e[35m"; magentabg="\e[45m"
cyanfg="\e[36m";    cyanbg="\e[46m"
whitefg="\e[37m";   whitebg="\e\[47m"


boldon="\e[1m";   boldoff="\e[22m"
ulon="\e[4m";   uloff="\e[24m"

col_reset="\e[0m"



echo -e " ${redbg} Some text.... ${col_reset} "
