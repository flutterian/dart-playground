// 매개변수를 순서로 받는다.
int addTwoNumbers(int a, int b) {
  return a + b;
}

// { required } 형식으로 매개변수를 이름으로 받게할 수 있다.
int addTwoNumbers2({required int? a, required int b}) {
  if (a == null) return 0;
  return a + b;
}

// 기본 값 지정도 가능, 매개변수 안넘기면 기본 값 적용
int addTwoNumbers3({required int a, int b = 2}) {
  return a + b;
}

// 포지셔널이랑 네임드를 섞어서도 사용 가능
int addTwoNumbers4(int a, {required int b, int c = 4}) {
  return a + b + c;
}

void main() {
  print(addTwoNumbers(1, 2)); // 3
  print(addTwoNumbers2(b: 3, a: 2)); // 5
  print(addTwoNumbers2(b: 3, a: null)); // 0
  print(addTwoNumbers3(a: 2)); // 4
  print(addTwoNumbers4(2, b: 3)); // 9
  print(addTwoNumbers4(1, b: 3, c: 7)); // 11
}
