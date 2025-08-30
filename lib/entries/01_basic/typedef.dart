/// typedef 키워드는 함수의 시그니처를 정의하는 값으롭 ㅗ면 됨
/// 함수 선언부를 정의하는 키워드
/// 함수가 무슨 동작을 하는지에 대한 정의는 없음
typedef Operation = void Function(int x, int y);

void add(int x, int y) {
  print('결과값: ${x + y}');
}

void subtract(int x, int y) {
  print('결과값: ${x - y}');
}

/// 다트에서 함수는 일급 객체이므로 함수를 값처럼 사용할 수 있다. 자바스크립트랑 똑같음.
void calculation(int x, int y, Operation oper) {
  oper(x, y);
}

void main() {
  /// typedef는 일반적인 변수의 type처럼 사용 가능
  Operation oper = add;
  oper(1, 2); // 3

  calculation(4, 3, oper); // 7

  ///subtract() 함수도 Operation에 해당되는 시그니처이므로 oper 변수에 저장가능
  oper = subtract;
  oper(1, 2); // -1

  calculation(4, 3, oper); // 1
}
