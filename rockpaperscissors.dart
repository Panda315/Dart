//Rock, Paper and Scissors with computer

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
    print("\nIt was a draw.\n\n");
  }
  else if(player_choice=="R")
  {
    if(computer_choice == "S")
      print("\nHurrah! You win !!!\n\n");
  }
  else if(player_choice=="P")
  {
    if(computer_choice == "R")
      print("\nHurrah! You win !!!\n\n");
  }
  else if(player_choice=="S")
  {
    if(computer_choice == "P")
      print("\nHurrah! You win !!!\n\n");
  }
  else
  {
    print("\nYou lost. Better Luck next time !!!\n\n");
  }

  
}

void main()
{
  print("""Please enter the mode you want to play : 
           1) Player vs Computer
           2) Player vs Player """);
  int mode = int.parse(stdin.readLineSync()!);
  switch (mode)
  {
  case 1:
          print("How many rounds do you want to play : ");
          int nor = int.parse(stdin.readLineSync()!);
          for(int i=1;i<=nor;i++)
          {   
              print("Round $i : ");
              String? player_choice;
              print("""Please Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              player_choice = stdin.readLineSync()!.toUpperCase();

              String computer_choice = computer_random_number()!;
              winner_selection(player_choice,computer_choice);
          }
          break;

  case 2:
        print("How many rounds do you want to play : ");
          int nor = int.parse(stdin.readLineSync()!);
          for(int i=1;i<=nor;i++)
          {   
              print("Round $i : ");
              String? firstplayer_choice,secondplayer_choice;
              print("""Player 1 Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              firstplayer_choice = stdin.readLineSync()!.toUpperCase();

              print("""Player 2 Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              secondplayer_choice = stdin.readLineSync()!.toUpperCase();

              winner_selection(firstplayer_choice,secondplayer_choice);
          }
          break;

  default:
      print("Incorrect command !!!");
      break;
  }
}
//which player won is not shown 