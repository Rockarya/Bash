#!/bin/bash
read -p "Enter the number:" number
biba=$(echo "$number / 100" | bc )
if (( $(echo "$biba > 0 " | bc ) ));
then
	{
		if (( $(echo "$biba == 1 " | bc ) ));
		then
			{
				f="C"
			}
		elif (( $(echo "$biba == 2 " | bc ) ));
		then
			{
				f="CC"
			}
		elif (( $(echo "$biba == 3 " | bc ) ));
                then
                        {
                                f="CCC"
                        }
		elif (( $(echo "$biba == 4 " | bc ) ));
                then
                        {
                                f="CD"
                        }
		elif (( $(echo "$biba == 5 " | bc ) ));
                then
                        {
                                f="D"
                        }
		elif (( $(echo "$biba == 6 " | bc ) ));
                then
                        {
                                f="DC"
                        }
		elif (( $(echo "$biba == 7 " | bc ) ));
                then
                        {
                                f="DCC"
                        }
		elif (( $(echo "$biba == 8 " | bc ) ));
                then
                        {
                                f="DCCC"
                        }
		fi
	}
fi
number=$( echo "$number % 100" | bc )
q=$( echo "$number / 10" | bc )
if (( $(echo "$q > 0 " | bc -l) ));
then
        {
                if (( $(echo "$q == 1 " | bc -l) ));
                then
                        {
                                s="X"
                        }
                elif (( $(echo "$q == 2 " | bc -l) ));
                then
                        {
                                s="XX"
                        }
                elif (( $(echo "$q == 3 " | bc -l) ));
                then
                        {
                                s="XXX"
                        }
                elif (( $(echo "$q == 4 " | bc -l) ));
                then
                        {
                                s="XL"
                        }
                elif (( $(echo "$q == 5 " | bc -l) ));
                then
                        {
                                s="L"
                        }
                elif (( $(echo "$q == 6 " | bc -l) ));
                then
                        {
                                s="LX"
                        }
                elif (( $(echo "$q == 7 " | bc -l) ));
                then
                        {
                                s="LXX"
                        }
                elif (( $(echo "$q == 8 " | bc -l) ));
                then
                        {
                                s="LXXX"
                        }
		elif (( $(echo "$q == 9" | bc -l) ));
		then
			{
				s="XC"
			}
                fi
	}
fi
number=$( echo "$number % 10" | bc )
                if (( $(echo "$number == 1 " | bc -l) ));
                then
                        {
                                t="I"
                        }
                elif (( $(echo "$number == 2 " | bc -l) ));
                then
                        {
                                t="II"
                        }
                elif (( $(echo "$number == 3 " | bc -l) ));
                then
                        {
                                t="III"
                        }
                elif (( $(echo "$number == 4 " | bc -l) ));
                then
                        {
                                t="IV"
                        }
                elif (( $(echo "$number == 5 " | bc -l) ));
                then
                        {
                                t="V"
                        }
                elif (( $(echo "$number == 6 " | bc -l) ));
                then
                        {
                                t="VI"
                        }
                elif (( $(echo "$number == 7 " | bc -l) ));
                then
                        {
                                t="VII"
                        }
                elif (( $(echo "$number == 8 " | bc -l) ));
                then
                        {
                                t="VIII"
                        }
		elif(( $(echo "$number == 9" | bc -l)));
               	then
			{
				t="IX"
			}
		fi
echo $f$s$t
        














