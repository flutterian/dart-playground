void main() {
  /// if 문
  int number = 4;

  if (number % 3 == 0) {
    print('3의 배수');
  } else if (number % 3 == 1) {
    print('나머지가 1');
  } else {
    print('맞는 조건이 없습니다.');
  }
}
