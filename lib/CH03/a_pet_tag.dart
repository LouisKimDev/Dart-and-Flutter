import 'dart:io';

void main() {
  String pet;
  String spayed;

  stdout.write("Enter the pet type (cat or dog): ");
  pet = stdin.readLineSync()!;

  stdout.write("has the pet been spayed or neutered (y/n)? ");
  spayed = stdin.readLineSync()!;

  if (pet == 'cat' && spayed == 'y') {
    stdout.write("Fee is \$4.00");
  } else if (pet == 'cat' && spayed == 'n') {
    stdout.write("Fee is \$8.00");
  } else if (pet == 'dog' && spayed == 'y') {
    stdout.write("Fee is \$6.00");
  } else if (pet == 'dog' && spayed == 'n') {
    stdout.write("Fee is \$12.00");
  } else {
    stdout.write("Only cats and dogs need pet tags. ");
  }
}
