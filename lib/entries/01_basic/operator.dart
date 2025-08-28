void main() {
  /// 기본 수치 연산자
  double number = 2;

  print(number + 2); // 4.0
  print(number - 2); // 0.0
  print(number * 2); // 4.0
  print(number / 2); // 2.0
  print(number % 3); // 2.0

  /// 단항 연산
  number++;
  print(number); // 3.0

  number--;
  print(number); // 2.0

  number += 2;
  print(number); // 4.0

  number -= 2;
  print(number); // 2.0

  number *= 2;
  print(number); // 4.0

  number /= 2;
  print(number); // 2.0

  number %= 3;
  print(number); // 2.0

  /// null 관련 연산자
  /// 타입 뒤에 ?를 명시해서 null을 가질 수 있다.
  double? number1 = 1;

  // 타입 뒤에 ?를 명시하지 않아 에러가 남
  // double number2 = null; // 에러남.

  double? number3; // 자동으로 null 값 저장
  print(number3); // null

  number3 ??= 3; // ?? 사용하면 기존 값이 null일 때만 저장됨
  print(number3); // 3.0

  // number3 ??= 4; // null이 아니므로 기존 값인 3으로 유지.
  // print(number3); // 3.0

  /// 값 비교 연산자
  int number4 = 1;
  int number5 = 2;

  print(number4 > number5); // false
  print(number4 < number5); // true
  print(number4 >= number5); // false
  print(number4 <= number5); // true
  print(number4 == number5); // false
  print(number4 != number5); // true

  /// 타입 비교 연산자
  int number6 = 1;

  print(number6 is int); // true
  print(number6 is String); // false
  print(number6 is! int); // false
  print(number6 is! String); // true
}
