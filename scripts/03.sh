echo "Let's play rock, paper scissors!"

echo "Pick your weapon: (1 for rock, 2 for paper, 3 for scissors)"
read user_pick

picks=("Rock" "Paper" "Scissors")

computer_pick="$((1 + $RANDOM % 3))"




while [ "$computer_pick" == "$user_pick" ];
do
	echo "Your pick is: ${picks[$user_pick - 1]}"
	echo "My pick is: ${picks[$computer_pick - 1]}"
	echo "It's a tie so let's try again!"
	echo "Pick your weapon: (1 for rock, 2 for paper, 3 for scissors)"
	read user_pick
	computer_pick="$((1 + $RANDOM % 3))";
done

if [[ "$user_pick" == 1 && "$computer_pick" == 3 || 
"$user_pick" == 2 &&  "$computer_pick" == 1 || 
"$user_pick" == 3 && "$computer_pick" == 2 ]];
then
	echo "Your pick is: ${picks[$user_pick - 1]}"
	echo "My pick is: ${picks[$computer_pick - 1]}"
	echo "You win, gg"
else
	echo "Your pick is: ${picks[$user_pick - 1]}"
	echo "My pick is: ${picks[$computer_pick - 1]}"
	echo "I WIN!! Haahaa"
fi
