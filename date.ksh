#File update check in Unix Epoch time format.

#Developed by: Ricardo Marassato.
#Script to check if a file is beeing updated on a certain quantity of days.
#Check https://www.epochconverter.com/ to learn more about Unix epoch.

#adate - Get the current date of a file on Unix Epoch time format.
#sdate - Current system  date on Unix Epoch time format.
#olddate - System date 10 days before (Quantity of days can be changed to fill your needs) on Unix Epoch time format.

adate=$(date +%s -r /media/ricardo/Data/Dados/Linux/Backup/Coding/Soap/test.py) 
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
