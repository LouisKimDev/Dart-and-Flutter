import 'dart:io';

void main() {
  // DEFINE THE CONSTANT PI HERE AND SET ITS VALUE TO 3.14159
  const pi = 3.14159;

  // DEFINE THE CONSTANT NAME OF AUTHOR OF THE PROGRAM
  // DEFINE THE CONSTANT STUDENT ID OF AUTHOR OF THE PROGRAM
  const String author = 'Doyun';
  const stuID = 5428362;

  // DECLARE ALL NEEDED VARIABLES HERE. GIVE EACH ONE A DESCRIPTIVE
  // NAME AND AN APPROPRIATE DATA TYPE.
  int temp1;
  int temp2;

  //DISPLAY NAME AND ID OF AUTHOR OF THE PROGRAM
  print("Author: $author, stuID: $stuID");

  // WRITE STATEMENTS HERE TO DISPLAY THE 4 MENU CHOICES.
  print("Program to  calcuate areas of");
  print("         1 -- square");
  print("         2 -- rectangle");
  print("         3 -- circle");
  print("         4 -- right triangle");
  print("         5 -- quit");

  // WRITE A STATEMENT HERE TO INPUT THE USER'S MENU CHOICE.
  print("Choose a valid menu: ");
  temp1 = int.parse(stdin.readLineSync()!);

  // IF AN INVALID MENU CHOICE WAS ENTERED, ITERATE CHOICE
  while (temp1 < 1 || temp1 > 5) {
    print("Choose a valid menu: ");
    temp1 = int.parse(stdin.readLineSync()!);
  }

  // USE A SWITCH IF STATEMENT TO OBTAIN ANY NEEDED INPUT INFORMATION
  // AND COMPUTE AND DISPLAY THE AREA FOR EACH VALID MENU CHOICE.
  switch (temp1) {
    case 1:
      {
        //OBTAIN INPUT INFORMATION TO COMPUTE AREA OF A SQUARE
        print("Enter width: ");
        temp1 = int.parse(stdin.readLineSync()!);

        //DISPLAY AREA OF A SQUARE
        print("Area of a square: ${temp1 * temp1}");
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

        //DISPLAY AREA OF A CIRCLE
        print("Area of a circle: ${pi * temp1 * temp1}");

        break;
      }
    case 4:
      {
        //OBTAIN INPUT INFORMATION TO COMPUTE AREA OF A RIGHT TRIANGLE
        print("Enter width: ");
        temp1 = int.parse(stdin.readLineSync()!);
        print("Enter height: ");
        temp2 = int.parse(stdin.readLineSync()!);

        //DISPLAY AREA OF A RIGHT TRIANGLE
        print("Area of a right triangle: ${(temp1 * temp2) / 2}");
        break;
      }
    case 5:
      {
        print("quit");
        break;
      }
  }
}
