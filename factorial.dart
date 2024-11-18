import 'dart:io';

void main() {
  // Ask the user to enter a number
  stdout.write("Enter a non-negative integer to calculate its factorial: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int number = int.tryParse(input) ?? -1;

    if (number < 0) {
      print("Please enter a non-negative integer.");
    } else {
      // Calculate factorial
      int factorial = calculateFactorial(number);

      // Print the result
      print("The factorial of $number is $factorial.");
    }
  } else {
    print("No input provided.");
  }
}

// Function to calculate factorial
int calculateFactorial(int number) {
  int result = 1;

  for (int i = 1; i <= number; i++) {
    result *= i;
  }

  return result;
}
