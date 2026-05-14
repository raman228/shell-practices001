echo "Please enter the number"
read NUMBER


if [ $(($NUMBER % 2)) -eq 0 ]; then
     echo " Give number $NUMBER is: EVEN"
else
     echo " Give number $NUMBER is: ODD"
fi



    