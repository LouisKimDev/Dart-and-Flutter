// This program guesses the the number you will enter
import 'dart:io';
import 'dart:math';

void main() {
  // Variable declaration and initialization
  Random random = Random();
  int rand, arg = 0;

  // Check if the player wants to quit
  while (arg != 4) {
    do {
      // Prompt player to enter number
      print("         1 -- rock");
      print("         2 -- paper");
      print("         3 -- scissor");
      print("         4 -- quit");
      arg = int.parse(stdin.readLineSync()!);
      // Generate random number
      rand = random.nextInt(3) + 1;

      // determine winner
      if (arg == rand)
        print("Tie game");
      else if (arg == 1) {
        if (rand == 2) {
          print("you : rock, com: paper");
          print("you lose");
        } else {
          print("you : rock, com: scissor");
          print("you win");
        }
      } else if (arg == 2) {
        if (rand == 3) {
          print("you : paper, com: scissor");
          print("you lose");
        } else {
          print("you : paper, com: rock");
          print("you win");
        }
      } else if (arg == 3) {
        if (rand == 1) {
          print("you : scissor, com: rock");
          print("you lose");
        } else {
          print("you : scissor, com: paper");
          print("you win");
        }
      } else
        break; // Jump out of the loop on wrong input
    } while (arg < 1 || arg > 4);

    // Prompt player if they wan to continue the game
    stdout.write(
        "Do you want to play again? Press 1-3 to continue Press 4 to quit: ");
    arg = int.parse(stdin.readLineSync()!);
  }
}
