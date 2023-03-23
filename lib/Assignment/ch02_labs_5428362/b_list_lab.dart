import 'dart:io';

void main() {
  //Create a list that contains 5 months
  int FirstMonth, LastMonth;
  List<String> monthlist = ['JANUARY', 'FEBRUARY', 'APRIL', 'MAY', 'JUNE'];

  //Add July to the list
  monthlist.add('JULY');

  //Insert march after febuary then display the list
  monthlist.insert(2, 'MARCH');
  print("$monthlist");

  //Add november and december then display the list
  monthlist.addAll(["NOVEMBER", 'DECEMBER']);
  print("$monthlist");

  //Insert agust, september and october after july then
  //display the list
  monthlist.insertAll(7, ["AGUST", 'SEPTEMBER', 'OCTOBER']);
  print("$monthlist");

  //prompt user to type which month to delete
  print("Enter month to delete: ");
  String? MonthToDelete = stdin.readLineSync();

  //delete the matching month then display the list
  monthlist.remove(MonthToDelete);
  print("$monthlist");

  //prompt user to type start and end of range to delete
  print("Enter index of month to delete from: ");
  FirstMonth = int.parse(stdin.readLineSync()!);
  print("Enter index of month to delete before: ");
  LastMonth = int.parse(stdin.readLineSync()!);

  //delete month in range then display the list
  monthlist.removeRange(FirstMonth, LastMonth);
  print("$monthlist");
}
