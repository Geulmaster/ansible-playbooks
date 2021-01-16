#!/bin/bash
#read -p 'Path to hosts: ' FILE
FILE="hosts"
echo "Target is: $1"
read -p 'Choose interface (all, home): ' SECTION
echo
if [ $SECTION = "all" ]; then
    sed -i '1 i\'$1'' $FILE
else
    #L_NUM = sed -n '/home/=' $FILE
    sed -i '/home/a '$1'' $FILE
fi
