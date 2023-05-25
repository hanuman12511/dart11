void main() {
  int n = 234513;
  int count = 0;
  int sum = 0;
  int evenSum = 0;
  int reverseEven = 0;
  int even = 0;

  while (n > 0) {
    int digit = n % 10;
    count++;
    sum += digit;
    if (digit % 2 == 0) {
      even = (even * 10 + digit);
      evenSum += digit;
      reverseEven = reverseEven * 10 + digit;
    }
    n = n ~/ 10;
  }

  print('Count of digits: $count');
  print('Sum of all digits: $sum');
  print('Even valued digits: $even');
  print('Sum of even digits: $evenSum');
  print('Reverse of even valued digits: $reverseEven');
}
