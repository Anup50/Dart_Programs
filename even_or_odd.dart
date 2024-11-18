import 'dart:io';

void main() {
  // Ask the user to enter a number
  stdout.write("Enter a number to check if it's even or odd: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int number = int.tryParse(input) ?? -1;

    if (number < 0) {
      print("Please enter a non-negative integer.");
    } else {
      // Determine if the number is even or odd
      String evenOrOdd = number % 2 == 0 ? "Even" : "Odd";

      // Print the result
      print("The number $number is $evenOrOdd.");
    }
  } else {
    print("No input provided.");
  }
}
