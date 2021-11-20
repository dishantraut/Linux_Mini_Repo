#!/bin/sh

echo -e "Select Choice :-\n1.\tCopy\n2.\tMove\n3.\tDelete"
echo ""
echo -n "Enter a number: "
read CHOICE

if [ $CHOICE -eq 1 ]; then
    # * Copy Command Execution
    echo -n "Enter Full Path Source File :- "
    read src_file
    # * Check For Existance Of Source File
    if ! [ -f $src_file ]; then
        echo "Error :- Source Path"
    fi

    echo -n "Enter Full Path Destination Directory :- "
    read dest_file
    # * Check For Existance Of Destination Directory
    if ! [ -d $dest_file ]; then
        echo "Error :- Destination Path"
    fi

    if [ -f $src_file ] && [ -d $dest_file ]; then
        cp $src_file $dest_file
    else
        echo "Please Check Errors Mentioned Above..!! & Try Again.."
        exit 1
    fi

elif [ $CHOICE -eq 2 ]; then
    # * Move Command Execution
    echo -n "Enter Full Path Source File :- "
    read src_file
    # * Check For Existance Of Source File
    if ! [ -f $src_file ]; then
        echo "Error :- Source Path"
    fi

    echo -n "Enter Full Path Destination Directory :- "
    read dest_file
    # * Check For Existance Of Destination Directory
    if ! [ -d $dest_file ]; then
        echo "Error :- Destination Path"
    fi

    if [ -f $src_file ] && [ -d $dest_file ]; then
        mv $src_file $dest_file
    else
        echo "Please Check Errors Mentioned Above..!! & Try Again.."
        exit 1
    fi

elif [ $CHOICE -eq 3 ]; then
    # * Delete Command Execution
    echo -n "Enter Full Path For File :- "
    read del_file
    # * Check For Existance Of Source File
    if [ -f $del_file ]; then
        rm $del_file
        echo "Delete Operation Successfull..!!"
    else
        echo "Error :- File / Path Is Invalid...!!"
        exit 1
    fi

else
    echo -e "\n*** Invalid Input ***"

fi
