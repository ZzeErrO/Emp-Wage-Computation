#!/bin/bash -x

#constants
EMP_RATE_PER_HR=20
IS_FULL_TIME=1
IS_PART_TIME=2
NUM_OF_WORKING_DAYS=5
MAX_HRS_IN_MONTH=20

#variable
totalEmpHrs=0
tatalWorkingDays=0

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))

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

	totalEmpHrs=$(($totalEmpHrs+$empHrs))

done

totalSalary=$(( $totalEmpHrs*$EMP_RATE_PER_HR ))
