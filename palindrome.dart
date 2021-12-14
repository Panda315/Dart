import 'dart:io';

//A palindrome is a string that reads the same forwards and backwards.

void main()
{
  
  print("Give me a word : ");
  String word=(stdin.readLineSync()!);      //reades line given by user to the string word
  int length=word.length;
  int check=0;
  for(int i=0;i<length;i++)
  {
    if(word[i]==word[length-(i+1)])
    {
      check++;
    }
  }

  if(check==length)
    print("The given word " + word +" is a Palindrome.");

  else 
    print("The given word " + word +" is not a Palindrome.");
    
}