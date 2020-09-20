#adate - Get the current date of a file on Unix Epoch time format.
#sdate - Current system  date on Unix Epoch time format.
#olddate - System date 10 days before (Quantity of days can be changed to fill your needs) on Unix Epoch time format.

#Script returns 1 if the file was modified in the last 10 days.

adate=$(date +%s -r /FILE_PATH) 
sdate=$(date +%s)		  					
olddate=$(date +%s -d "-10 Days") 					

#printf "File epoch date: $adate\n"
#printf "Current system date in epoch: $sdate\n"
#printf "System date -10days in epoch: $olddate\n"

if (($adate == $sdate))
then 
	printf "1\n"
elif (($adate < $olddate))
then
	printf "0\n"
else
	printf "1\n"
fi
