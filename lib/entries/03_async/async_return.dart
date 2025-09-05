void main() async {
  final result = await addNumbers(1, 1);
  print('결과값 $result');

  final result2 = await addNumbers(2, 2);
  print('결과값 $result2');

  // 1 + 1 계산 시작
  // 1 + 1 = 2
  // 1 + 1 코드 실행 끝
  // 결과값 2
  // 2 + 2 계산 시작
  // 2 + 2 = 4
  // 2 + 2 코드 실행 끝
  // 결과값 4
}

Future<int> addNumbers(int number1, int number2) async {
  print('$number1 + $number2 계산 시작');

  await Future.delayed(const Duration(seconds: 3), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  print('$number1 + $number2 코드 실행 끝');

  return number1 + number2;
}
