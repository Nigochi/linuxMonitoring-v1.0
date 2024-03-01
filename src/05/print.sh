#!/bin/bash

echo "Total number of folders (including all nested ones) =" $DIR_NUM
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$DIR_TOP"
echo "Total number of files =" $FILE_NUM
echo "Number of:"
echo "Configuration files (with the .conf extension) =" $CONF_NUM
echo "Text files =" $TEXT_NUM
echo "Executable files =" $EXE_NUM
echo "Log files (with the extension .log) =" $LOG_NUM
echo "Archive files =" $ARC_NUM
echo "Symbolic links =" $SYM_NUM
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$FILE_TOP"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
echo "$EXE_TOP"
END=$(date +%s%N)
DIFF=$((( $END - $START )/1000000000))
echo "Script execution time (in seconds) =" $DIFF