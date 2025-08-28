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
}
