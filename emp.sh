####WELCOME###
echo "Employee shell program added"
#!/bin/bash
IS_FULL_TIME=1
IS_PART_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalempHr=0;
totalworkingdays=20;

case $empCheck in
      $IS_FULL_TIME)
         empHrs=8
         ;;
      $IS_PART_TIME)
         empHrs=4
         ;;
       *)
         empHrs=0
         ;;
esac
   echo $empHrs
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3));
   empHrs="$( getWorkHrs $empCheck )"
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
day="Day"
   dailyWage[$totalWorkingDays]="$( getEmpwage $empHrs )"
done
totalSalary=$(( $totalEmpHrs \* $EMP_RATE_PER_HR ));
