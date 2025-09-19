import 'dart:io';

void main() {
  stdout.write("Enter 6 numbers? ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 0; i < 6; i++) {
    stdout.write("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int sumOdd = 0;

  int smallest = numbers[0];

  for (int num in numbers) {
    if (num % 2 != 0) {
      sumOdd += num;
    }

    if (num < smallest) smallest = num;
  }

  print("\n===== Results =====");
  print("Numbers entered: $numbers");
  print("Sum of odd numbers: $sumOdd");
  print("Smallest number: $smallest");
}
