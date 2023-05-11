#!/bin/bash

echo What is your first name?
read FIRST_NAME #Asks for user input
echo What is your last name?
read LAST_NAME # Asks for user input
echo What is your age?
read AGE #Ask for user input

echo Hello $FIRST_NAME $LAST_NAME, you are $AGE years old! #Prints the user input variables into a string

sleep 2 #sleeps for 2 seconds

while true 
    do
        read -p "Are you ready for the first boss? Type (y)Yes/(n)No: " choice
        case $choice in
            Y|y ) echo "Starting your dungeon adventure!";
            break;;
            N|n ) echo "Ending program, Goodbye!";
            exit;;
            *) echo "Incorrect input. Are you ready for the first boss? (y)Yes/(n)No: ";;
        esac
    done

echo "Welcome Traveller $FIRST_NAME. Please select your character class:
1 - Mage
2 - Rouge
3 - Knight
4 - Battle Master"

read class
# Case is a switcher. A user chooses and option and the string line below will fill in the variables of the chosen option.
case $class in
    1)
        type="Mage"
        hp=10
        attack=11
        ;;
    2)
        type="Rouge"
        hp=4
        attack=20
        ;;
    3) 
        type="Knight"
        hp=19
        attack=7
        ;;
    4)
        type="Battle Master"
        hp=13
        attack=12
        ;;
esac

echo "You have chosen the $type class. Your HP is $hp, and your attack is $attack."

#First boss battle
beast=$(( $RANDOM % 2 )) #Chooses a random number to be true in this condition, if the user choose thr true value, you move on, or the program ends
#In this case, 2 random numbers are chosen with their values being either 0 or 1.
echo "$FIRST_NAME, your first boss approaches! It's a cockroach! Pick a number between 0-1. (0/1)"
read finished
# || double barrel means or, so in this case $finished is equal too cheatkill on user input
if [[ $beast == $finished || $finished == "cheatkill" ]]; then
    echo "The Cockroach is VANQUISHED!"
else
    echo "You Died"
    exit 1
fi

sleep 2

#Second boss battle
beast=$(( $RANDOM % 5 ))

echo "$FIRST_NAME, your second boss approaches! It's a House Cat! Pick a number between 0-4.(0-4)"
read finished

if [[ $beast == $finished || $finished == "cheatkill" ]]; then
    echo "The House Cat is VANQUISHED!"
else
    echo "You Died"
    exit 1
fi

sleep 2

#Third boss battle
beast=$(( $RANDOM % 15 ))

echo "$FIRST_NAME, your third boss approaches! It's your MOM! Pick a number between 0-14.(0-14)"
read finished

if [[ $beast == $finished || $finished == "cheatkill" ]]; then
    echo "You VANQUISHED YOUR MOM! The Ultimate boss!"
else
    echo "You Died, IMAGIN!"
    exit 1
fi

sleep 2

#Fourth boss battle
beast=$(( $RANDOM % 30 ))

echo "$FIRST_NAME, your fourth boss approaches! It's your DAD! Pick a number between 0-29. (0-29)"
read finished

if [[ $beast == $finished || $finished == "cheatkill" ]]; then
    echo "You VANQUISHED YOUR DAD!"
    sleep 1
    echo "Congratulations you have BEAT THE DUNGEON!"
else
    echo "You died. Wow, you aren't very good at this are you?"
    exit 1
fi

sleep 2