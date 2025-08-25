void main() {
  /// var 는 변수의 값을 사용해서 타입을 유추하는 키워드
  /// 타입을 한 번 유추하면 추론된 타입이 고정됨
  /// 고정된 변수 타입과 다른 변수 타입의 값을 같은 변수에 다시 저장하려하면 에러가 남
  /// dynamic은 변수의 타입이 고정되지 않아서 다른 타입으로 값을 저장 가능
  dynamic name = 'bm choi'; // string
  name = 1; // int

  // var name2 = 'string';
  // name2 = 1;

  print(name);
  // print(name2);
}
