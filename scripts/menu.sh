#! /bin/bash
trap '' 2 # prevent close by pressing ctrl + c
while true
do
    clear
    echo "======================="
    echo -e "Menu --- \c" ; echo "pid: $$"
    echo "======================="

    echo "Enter 1 to list user 1: "
    echo "Enter 2 to show calendar 2: "
    echo "Enter q to exit the menu q: "
    echo "Enter n create new file n: "
    echo -e "\n"
    echo -e "Enter your selection \c"
    read answer

    case "$answer" in
        1) who
            uptime;;
        2) cal ;;
        q) exit ;;
        n)  read -p "Type file name: " newfile
            source newfile.sh $newfile +x ;;
        "") continue ;;
        *) echo -e "\nInvalid selection\n" ;;
    esac

    read -n 1 -s -r -p "Press any key to continue "
done