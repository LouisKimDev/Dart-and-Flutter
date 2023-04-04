import 'dart:io';
import 'dart:math';

// DEFINE THE CONSTANT NAME OF AUTHOR OF THE PROGRAM
// DEFINE THE CONSTANT STUDENT ID OF AUTHOR OF THE PROGRAM
// DEFINE THE CONSTANT PI HERE AND SET ITS VALUE TO 3.14159
const String author = 'Doyun Kim';
const stuID = 5428362;
const pi = 3.14159;

void main() {
  void printAuthor() {
    // display authors name
    print("Author: $author, stuID: $stuID");
  }

  void displayMenu() {
    // display menu
    print("Program to  calcuate areas of");
    print("         1 -- square");
    print("         2 -- rectangle");
    print("         3 -- circle");
    print("         4 -- right triangle");
    print("         5 -- quit");
  }

  // DECLARE ALL NEEDED VARIABLES HERE. GIVE EACH ONE A DESCRIPTIVE
  // NAME AND AN APPROPRIATE DATA TYPE.
  int temp1;
  int temp2;

  double circleArea(int temp1) {
    print("Area of a circle: ${pi * pow(temp1, 2)}");
    return pi * pow(temp1, 2);
  }

  double rightTriangleArea(int temp1, int temp2) {
    print("Area of a right triangle: ${(temp1 * temp2) / 2}");
    return (temp1 * temp2) / 2;
  }

  // WIRTE STATEMENTS HERE TO DISPLAY THE 4 MENW CHOICES.
  printAuthor();
  displayMenu();

  // WRITE A STATEMENT HERE TO INPUT THE USER'S MENU CHOICE.
  do {
    print("Choose a valid menu: ");
    temp1 = int.parse(stdin.readLineSync()!);
  } while (temp1 < 1 || temp1 > 5);

  // USE A SWITCH IF STATEMENT TO OBTAIN ANY NEEDED INPUT INFORMATION
  // AND COMPUTE AND DISPLAY THE AREA FOR EACH VALID MENU CHOICE.
  switch (temp1) {
    case 1:
      {
        //OBTAIN INPUT INFORMATION TO COMPUTE AREA OF A SQUARE
        print("Enter width: ");
        temp1 = int.parse(stdin.readLineSync()!);

        //DISPLAY AREA OF A SQUARE
        print("Area of a square: ${pow(temp1, 2)}");
        break;
      }
    case 2:
      {
        //OBTAIN INPUT INFORMATION TO COMPUTE AREA OF A RECTANGLE
        print("Enter width: ");
        temp1 = int.parse(stdin.readLineSync()!);
        print("Enter height: ");
        temp2 = int.parse(stdin.readLineSync()!);

        //DISPLAY AREA OF A RECTANGLE
        print("Area of a rectangle: ${temp1 * temp2}");
        break;
      }
    case 3:
      {
        //OBTAIN INPUT INFORMATION TO COMPUTE AREA OF A CIRCLE
        print("Enter radius: ");
        temp1 = int.parse(stdin.readLineSync()!);

        circleArea(temp1);
        break;
      }
    case 4:
      {
        //OBTAIN INPUT INFORMATION TO COMPUTE AREA OF A RIGHT TRIANGLE.
        print("Enter width: ");
        temp1 = int.parse(stdin.readLineSync()!);
        print("Enter height: ");
        temp2 = int.parse(stdin.readLineSync()!);

        rightTriangleArea(temp1, temp2);
        break;
      }
    case 5:
      {
        print("quit");
        break;
      }
  }
}
