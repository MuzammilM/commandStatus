
. cmdStat

#To check commands that you'd want to display an error yet still continue executing the remaining script
execute ls -9
echo "Will display this line"

#To check commands and exit the script incase the command fails
execute exit ls -9
echo "Will not display this line"
