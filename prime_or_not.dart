import 'dart:io';

void main() {
  // Ask the user to enter a number
  stdout.write("Enter a number to check if it's prime: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int number = int.tryParse(input) ?? -1;

    if (number < 0) {
      print("Please enter a non-negative integer.");
    } else {
      // Check if the number is prime
      bool isPrime = checkPrime(number);

      // Print the result
      print("$number is ${isPrime ? "a Prime Number" : "not a Prime Number"}.");
    }
  } else {
    print("No input provided.");
  }
}

// Function to check if a number is prime
bool checkPrime(int number) {
  if (number <= 1) return false; // 0 and 1 are not prime
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
