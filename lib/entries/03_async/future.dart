void main() {
  addNumbers(1, 1);
}

/// 1 + 1 계산 시작!
/// 1 + 1 코드 실행 끝
/// 1 + 1 = 2

void addNumbers(int number1, int number2) {
  print('$number1 + $number2 계산 시작!');

  Future.delayed(const Duration(seconds: 3), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  print('$number1 + $number2 코드 실행 끝');
}
