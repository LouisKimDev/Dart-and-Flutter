// This program guesses the the number you will enter
import 'dart:io';
import 'dart:math';

void main() {
  // Variable declaration and initialization
  int num;
  Random random = Random();
  int rand;
  String quit = "P";

  // Check if the player wants to quit
  while (quit != "Q") {
    do {
      // Prompt player to enter number
      stdout.write("Enter number between 1 and 10: ");
      num = int.parse(stdin.readLineSync()!);
      // Generate random number
      rand = random.nextInt(10) + 1;

      // determine winner
      if (num == rand)
        print("I win, I guessed your number");
      else if (num >= 1 && num <= 10)
        print("You win, I did not guess your number");
      else
        break; // Jump out of the loop on wrong input

      print("Your number is-> $num");
      print("My number is-> $rand");
    } while (num < 1 || num > 10);

    // Prompt player if they wan to continue the game
    stdout.write("Do you want to play again? Press q to quit: ");
    quit = stdin.readLineSync()!.toUpperCase();
  }
}
