//Rock, Paper and Scissors with computer

import 'dart:io';
import 'dart:math';

int round_wb1=0,round_wb2=0;             //round_wb1 = round won by player_1

String? computer_random_number()         //getting computer move , chosen randomly by computer
{
  Random choice = new Random();
  int uncertain = choice.nextInt(3);

  switch(uncertain)
  {
    case 0:
      return "R";

    case 1:
      return "P";

    case 2:
      return "S";
    
    default : 
    print("\nSorry ! This round has been called off.");
      break;
  }
}

void winner_selection(String name_1,String firstplayer_choice, String secondplayer_choice,String name_2)
{
  print("\n" + name_1 + ": $firstplayer_choice");
  print(name_2 + ": $secondplayer_choice");

  if(firstplayer_choice==secondplayer_choice)
  {
    print("\nIt was a draw.\n");
  }

  else if(firstplayer_choice=="R")
  {
    if(secondplayer_choice == "S")
    {
      print("\nHurrah! " + name_1 + " won !!!\n");
      round_wb1++;
    }
    else
    {
      if(name_2=="Computer")
      {
        print("\nYou lost. Better Luck next time !!!\n");
        round_wb2++;
      }

      else  
      {
      print("\n" + name_2 + " won !!!");
      round_wb2++;
      }
    }  
  }

  else if(firstplayer_choice=="P")
  {
    if(secondplayer_choice == "R")
    {
      print("\nHurrah! " + name_1 + " won !!!\n");
      round_wb1++;
    }
    else
    {
      if(name_2=="Computer")
      {
        print("\nYou lost. Better Luck next time !!!\n");
        round_wb2++;
      }

      else  
      {
      print("\n" + name_2 + " won !!!");
      round_wb2++;
      }
    } 
  }

  else if(firstplayer_choice=="S")
  {
    if(secondplayer_choice == "P")
    {
      print("\nHurrah! " + name_1 + " won !!!\n");
      round_wb1++;
    }
    else
    {
      if(name_2=="Computer")
      {
        print("\nYou lost. Better Luck next time !!!\n");
        round_wb2++;
      }

      else  
      {
      print("\n" + name_2 + " won !!!");
      round_wb2++;
      }
    } 
  }

  else
  {
    if(name_2=="Computer")
    {
      print("\nYou lost. Better Luck next time !!!\n");
      round_wb2++;
    }

    else  
    {
      print("\n" + name_2 + " won !!!");
      round_wb2++;
    }
  } 
}


print_winner(String name_1,String name_2)
{
  if(round_wb1==round_wb2)
    print("The game was draw with score of $round_wb1-$round_wb2.\n");

  else if(round_wb1>round_wb2)
    print( name_1 + " won the match by the score of $round_wb1-$round_wb2.\n");

  else
  {
    if(name_2=="Computer")
      print("You lost the match by the score of $round_wb2-$round_wb1.\n");

    else  
      print( name_2 + " won the match by the score of $round_wb2-$round_wb1.\n");
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
          print_winner(name_1,"Computer");
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
              stdin.echoMode = false ;
              print( name_1 + """ Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              firstplayer_choice = stdin.readLineSync()!.toUpperCase();

              print( name_2 + """ Enter Your Choice : 
                       1) R (for Rock)
                       2) S (for scissors)
                       3) P (for paper)""");
              secondplayer_choice = stdin.readLineSync()!.toUpperCase();
              stdin.echoMode = true ;
              winner_selection(name_1,firstplayer_choice,secondplayer_choice,name_2);
          }
          print_winner(name_1,name_2);
          break;

  default:
      print("\n\nIncorrect command !!!");
      break;
  }
  
}

