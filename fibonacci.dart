import 'dart:io'; //for user input output

void main() {
  stdout.write("Enter the number of Fibonacci terms to generate: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int n = int.tryParse(input) ??
        -1; //check if input string can be parsed to int if not return -1

    if (n <= 0) {
      print("Please enter a positive integer.");
    } else {
      List<int> fibonacci = generateFibonacci(n);
      print("The first $n terms of the Fibonacci sequence are: $fibonacci");
    }
  } else {
    print("No input provided.");
  }
}

// Function to generate Fibonacci sequence
List<int> generateFibonacci(int n) {
  List<int> sequence = [
    0,
    1
  ]; // Initialize the sequence with the first two numbers

  for (int i = 2; i < n; i++) {
    sequence.add(sequence[i - 1] + sequence[i - 2]);
  }

  return sequence.sublist(0, n); // Handle cases where n < 2
}
