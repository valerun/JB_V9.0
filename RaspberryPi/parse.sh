#!/bin/bash

while read line; do
	if [ "$line" != "EOF" ]; then
		line=`echo "$line" | grep -Eo "[\$].*#"`
		#echo "$line"
		#echo "$data"
		awk -v data=$data -v cmd=$cmmd -F, '{
		if ($2 == 0)
		{
			#print $2,$3,$4,$5,$6,"=>","Standby";
			#data= $3;
			data = "V"$4",L"$5",S"$6;
			#print data;
			cmd = "python PushToServer.py -i "$3" -p "data;
			#print cmd;
			system(cmd);
			#data += ":";
		}
		else if ($2 == 2)
		{
			#print $2,$3,$4,$5,$6,$7,$8,"=>","Charging";
			data = "V"$4",L"$5",E"$6",A"$7",P"$8;
			cmd = "python PushToServer.py -i "$3" -p "data;
			system(cmd);
		}
		}' $line
		#python PushToServer.py -i $2 -p 
		#sed -n "/$/,/#/p" $line
		#if [ awk -F '{print $2}' $line` == "2" ]; then
		#	echo -n "$line" | awk -F, '{print $2,"\n",$3,"\n",$4,"\n",$5,"\n",$6,"\n",$7,"\n",$8,"\n"}'
		#else
		#	echo -n "$line" | awk -F, '{print $2,"\n",$3,"\n",$4,"\n",$5,"\n",$6,"\n",$7,"\n",$8,"\n"}'
		#awk -F, '{print "State:",$2,"\nID:",$3,"\nVolts:",$4}' $line
	else
		break
	fi
done < /dev/ttyUSB0


#cat /dev/ttyUSB0 > serial.dump
#awk -F, '{print $1}' /dev/ttyUSB0
#echo $line
#awk -F, '{print "ID:",$1,"\nVolts:",$2 }' /dev/ttyUSB0
