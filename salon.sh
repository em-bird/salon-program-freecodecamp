#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ Salon Appointments ~~~~~\n"

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  echo "How can I help you?" 
  echo -e "\n1) Standard Haircut\n2) Wash and Trim\n3) Highlights\n4) Full Dye Job\n5) Buzz Cut\n6) Beard and Goatee Trim\n7) Exit"
read MAIN_MENU_SELECTION

  case $MAIN_MENU_SELECTION in
    1) STANDARD_HAIRCUT ;;
    2) WASH_AND_TRIM ;;
    3) HIGHLIGHTS ;;
    4) FULL_DYE_JOB ;;
    5) BUZZ_CUT ;;
    6) BEARD_AND_GOATEE_TRIM ;;
    7) EXIT ;;
    *) MAIN_MENU "Please enter a valid option." ;;
  esac
  
}

EXIT() {
  echo -e "\nThank you for stopping by!\n"
}

MAIN_MENU
