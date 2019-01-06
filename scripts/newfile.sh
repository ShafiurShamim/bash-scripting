#! /bin/bash
filename=$1
perms=$2

if [ "$filename" == "" ]; then
    echo -e $"Error: Filename required\n"
else
    if [ ! -e $filename ]; then
        echo -n > $filename 

        if [ -e $filename ]; then
        
            if [ "$perms" != "" ]; then
                chmod $perms $filename 
            fi
            echo -e $"File created\n"

        else
            echo -e $"ERROR: File not created"
        fi
        
    else 
        echo -e $"File already exists! "
    fi
fi

# read -p "Type file name: " newfile

# if [ "$newfile" != "" ]; then

#     if [ ! -f $newfile ]; then
#         touch $newfile

#         if [ "$perms" != "" ]; then
#             chmod $perms $newfile
#         fi

#     else 
#         echo -e $"File already exists! "
#     fi

# else
#     echo -e $"File is not created "
# fi