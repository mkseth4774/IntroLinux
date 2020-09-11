##
## .bash_logout cleanup of any .tmp files owned by me...
##
clear
echo "Now running .bash_logout cleanup script - stand by..."

for _MY_TMP_FILES in `find / -user tpbonfi -name "*.tmp" -print 2>/dev/null`
do
	echo "Found and now removing $_MY_TMP_FILES"
	/usr/bin/rm -i "$_MY_TMP_FILES"
done

##
## End of file...
