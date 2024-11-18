import 'dart:io'; //for inputs / outputs

void main() {
  //Ask for input
  stdout.write("Enter a string to check if it's a palindrome: ");
  String? input = stdin.readLineSync(); // Read input

  if (input != null) {
    //remove spaces, convert to lowercase
    String formattedInput = input.replaceAll(" ", "").toLowerCase();

    //split input list, reverse and then join
    String reversed = formattedInput.split('').reversed.join('');

    if (formattedInput == reversed) {
      print("The string '$input' is a palindrome!");
    } else {
      print("The string '$input' is not a palindrome.");
    }
  } else {
    print("No input provided.");
  }
}
