#!/bin/bash
read -p "Please enter your SGPA:" sgpa
five="5"
if (( $(echo "$five > $sgpa" | bc -l) )); 
	then
		{	
			echo "PROBATION"
			echo "AGLE SEM PHOD DENGE"
		}
else
	{
		si="16"
		p=$( echo "$si" - "$sgpa" | bc -l)
		te="10"
		if (( $(echo "$p <= $te" | bc -l) )); 
			then
				{
					echo "You need SGPA $p next sem"
				}
		else
			{
				echo "AGLE SEM PHOD DENGE"
			}
		fi
	}
fi



