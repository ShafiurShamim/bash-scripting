#! /bin/bash

# tput Color Capabilities:
# tput setab [1-7] – Set a background color using ANSI escape
# tput setb [1-7] – Set a background color
# tput setaf [1-7] – Set a foreground color using ANSI escape
# tput setf [1-7] – Set a foreground color
# tput Text Mode Capabilities:
# tput bold – Set bold mode
# tput dim – turn on half-bright mode
# tput smul – begin underline mode
# tput rmul – exit underline mode
# tput rev – Turn on reverse mode
# tput smso – Enter standout mode (bold on rxvt)
# tput rmso – Exit standout mode
# tput sgr0 – Turn off all attributes
# Color Code for tput:
# 0 – Black
# 1 – Red
# 2 – Green
# 3 – Yellow
# 4 – Blue
# 5 – Magenta
# 6 – Cyan
# 7 – White
# 9 - Reset to default color

if tput setaf 1 &> /dev/null; then
  tput sgr0
  blackfg=$(tput setaf 0);   blackbg=$(tput setab 0)
  redfg=$(tput setaf 1);     redbg=$(tput setab 1)
  greenfg=$(tput setaf 2);   greenbg=$(tput setab 2)
  yellowfg=$(tput setaf 3);  yellowbg=$(tput setab 3)
  bluefg=$(tput setaf 4);    bluebg=$(tput setab 4)
  magentafg=$(tput setaf 5); magentabg=$(tput setab 5)
  cyanfg=$(tput setaf 6);    cyanbg=$(tput setab 6)
  whitefg=$(tput setaf 7);   whitebg=$(tput setab 7)

  #boldon=$(tput bold);   boldoff=$(tput rmso)
  ulon=$(tput smul);   uloff=$(tput rmul)
  col_reset=$(tput sgr0)
  
else
  blackfg="\e[30m";   blackbg="\e[40m"
  redfg="\e[31m";     redbg="\e[41m"
  greenfg="\e[32m";   greenbg="\e[42m"
  yellowfg="\e[33m";  yellowbg="\e[43m"
  bluefg="\e[34m";    bluebg="\e[44m"
  magentafg="\e[35m"; magentabg="\e[45m"
  cyanfg="\e[36m";    cyanbg="\e[46m"
  whitefg="\e[37m";   whitebg="\e\[47m"


  #boldon="\e[1m";   boldoff="\e[22m"
  ulon="\e[4m";   uloff="\e[24m"

  col_reset="\e[0m"
fi
echo -e "${redbg}Some ${blackfg}text.... ${col_reset}"
echo -e "${ulon}Underline text${uloff}.... ${col_reset}"

cat << EOF
${redbg}Some ${blackfg}text....${col_reset}
${ulon}Underline text${uloff}.... ${col_reset}
EOF