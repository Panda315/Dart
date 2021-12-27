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

void winner_selection(String firstplayer_choice, String secondplayer_choice )
{

  print("\nPlayer_1: $firstplayer_choice");
  print("Player_2 : $secondplayer_choice");

  if(firstplayer_choice==secondplayer_choice)
  {
    print("\nIt was a draw.\n\n");
  }
  else if(firstplayer_choice=="R")
  {
    if(secondplayer_choice == "S")
      print("\nHurrah! Player_1 win !!!\n\n");
  }
  else if(firstplayer_choice=="P")
  {
    if(secondplayer_choice == "R")
      print("\nHurrah! Player_1 win !!!\n\n");
  }
  else if(firstplayer_choice=="S")
  {
    if(secondplayer_choice == "P")
      print("\nHurrah! Player_1 win !!!\n\n");
  }
  else
  {
    print("\nPlayer_1 lost. Better Luck next time !!!\n\n");
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
              print("\nRound $i : ");
              String? firstplayer_choice,secondplayer_choice;
              print("""Player_1 Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              firstplayer_choice = stdin.readLineSync()!.toUpperCase();

              print("""Player_2 Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              secondplayer_choice = stdin.readLineSync()!.toUpperCase();

              winner_selection(firstplayer_choice,secondplayer_choice);
          }
          break;

  default:
      print("\n\nIncorrect command !!!");
      break;
  }
}
//which player won is not shown 