if [ $# -eq 0 ]
then
echo "No arguments"
exit 
elif [ $# -lt 2 ]
then
echo "Only one argument given"
exit
else
f1=`ls -l $1| cut -c '2-10'`
f2=`ls -l $2| cut -c '2-10'`
if [ "$f1" = "$f2" ]
then
echo "File permissions are identical"
echo "The permissions are: $f1"
else
echo "File permissions are not identical"
echo "File permissions of first file ($1) are: $f1"
echo "File permissions of second file ($2) are: $f2"
fi
fi

