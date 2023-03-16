import 'dart:io';

void main() {
  var Italy = <String>{"Green", "White", "Red"};
  var Britain = <String>{"Blue", "Red", "White"};
  String Str;

  //create a set that will contain
  var Container = <String>{};

  //the union, intersection and difference of the colors
  Italy.union(Britain);
  Italy.intersection(Britain);
  Italy.difference(Britain);

  //display the color or each flag
  print(Italy);
  print(Britain);

  //find and display intersection and difference
  //of the colors of the two flags
  print(Italy.union(Britain));
  print(Italy.intersection(Britain));
  print(Italy.difference(Britain));

  //find union and assign it the union to set
  Container = Italy.union(Britain);

  //display the union set
  print(Container);

  //prompt user to type color name
  print("Enter color: ");
  Str = stdin.readLineSync()!;

  //check if union set contains color and display the result
  print(Container.contains(Str));

  //prompt user type which color to remove
  print("Enter color to remove: ");
  Str = stdin.readLineSync()!;

  //delete that color and display the result
  Container.remove(Str);
  print(Container);
}
