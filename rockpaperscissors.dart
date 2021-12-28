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

void winner_selection(String name_1,String firstplayer_choice, String secondplayer_choice,String name_2)
{

  print("\n" + name_1 + ": $firstplayer_choice");
  print(name_2 + ": $secondplayer_choice");

  if(firstplayer_choice==secondplayer_choice)
  {
    print("\nIt was a draw.\n\n");
  }
  else if(firstplayer_choice=="R")
  {
    if(secondplayer_choice == "S")
      print("\nHurrah! " + name_1 + " won !!!\n\n");
  }
  else if(firstplayer_choice=="P")
  {
    if(secondplayer_choice == "R")
      print("\nHurrah! " + name_1 + " won !!!\n\n");
  }
  else if(firstplayer_choice=="S")
  {
    if(secondplayer_choice == "P")
      print("\nHurrah! " + name_1 + " won !!!\n\n");
  }
  else
  {
    if(name_2=="Computer")
      print("\nYou lost. Better Luck next time !!!\n\n");

    else  
      print("\n" + name_2 + " won !!!");
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
          print("\nEnter your name : ");
          String name_1= stdin.readLineSync()!;
          print("\nHow many rounds do you want to play : ");
          int nor = int.parse(stdin.readLineSync()!);
          for(int i=1;i<=nor;i++)
          {   
              print("\nRound $i : ");
              String? player_choice;
              print("""Please Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              player_choice = stdin.readLineSync()!.toUpperCase();

              String computer_choice = computer_random_number()!;
              winner_selection(name_1,player_choice,computer_choice,"Computer");
          }
          break;

  case 2:
          print("\nEnter first player name : ");
          String name_1 = stdin.readLineSync()!;
          print("\nEnter second player name : ");
          String name_2 = stdin.readLineSync()!;
          print("\nHow many rounds do you want to play : ");
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

              winner_selection(name_1,firstplayer_choice,secondplayer_choice,name_2);
          }
          break;

  default:
      print("\n\nIncorrect command !!!");
      break;
  }
}
//which player won is not shown 