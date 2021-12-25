import 'dart:io';
import 'dart:math';

String? computer_random_number()         //getting computer move , chosen randomly by computer
{
  Random choice = new Random();
  int uncertain = choice.nextInt(3);

  switch(uncertain)
  {
    case 0:
      return "R";
      break;

    case 1:
      return "P";
      break;

    case 2:
      return "S";
      break;
    
    default : 
      break;
  }
}

void winner_selection(String player_choice, String computer_choice )
{

  print("\nPlayer : $player_choice");
  print("Computer : $computer_choice");

  if(player_choice==computer_choice)
  {
    print("\nIt was a draw.");
  }
  if(player_choice=="R")
  {
    if(computer_choice == "S")
      print("\nHurrah! You win !!!\n\n");
  }
  if(player_choice=="P")
  {
    if(computer_choice == "R")
      print("\nHurrah! You win !!!\n\n");
  }
  if(player_choice=="S")
  {
    if(computer_choice == "P")
      print("\nHurrah! You win !!!\n\n");
  }
  else
    print("\nYou lost. Better Luck next time !!!\n\n");

  
}

void main()
{
  String? player_choice;
  print("""Please Enter Your Choice : 
           1) R (for Rock)
           2) S (for scissors)
           3) P (for paper)""");
  player_choice=stdin.readLineSync()!.toUpperCase();

  String computer_choice = computer_random_number()!;
  winner_selection(player_choice,computer_choice);



}