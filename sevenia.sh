#! /usr/bin/env bash

# ---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
#
# BASH SEVENIA
#
# Sevenia's bash template
#
# Name          : sevenia.sh
# Location      : ./
# Dependency    : which, whoami
# Programmer(s) : SynSevenia
# Last Edited   : 2016-11-05 02:53
#
# ---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8

# BEGIN

error_code=0
user1=root
user2=pi

_whoami=$(which whoami)
# echo _whoami=$_whoami

script_user=$($_whoami)
# echo script_user=\"$script_user\"

if [ z$script_user == z$user1 -o z$script_user == z$user2 ]; then
   echo "User is able to execute this script" > /dev/null
else
   error_code=10
   echo -n "ERROR($error_code): "
   echo "Only 'root' or 'pi' can execute this script!"
   echo " "
   exit $error_code
fi

echo "Hello friend"

exit $error_code

# END
