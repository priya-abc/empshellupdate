####WELCOME###
echo "Employee shell program added"
#!/bin/bash
Rate=20
Fulltime=8
Halftime=4
total_wage=0
for (( i=1; i<=30; i++ ))
do
        n=$((RANDOM%2))
        attendance[$i]=$n
        if [ ${attendance[$i]} -eq 0 ]
        then
                attendance[$i]="Absent"
                partime[$i]=0
        elif [ ${attendance[$i]} -eq 1 ]
        then
                attendance[$i]="Present"
                partime[$i]=$((RANDOM%2+2))
        fi
done
echo -e "Day No.\t DailyWage \t TotalWage"
for (( i=1; i<=30; i++))
do
        if [[ ${attendance[$i]} = "Present" ]]
        then
