/// 익명, 람다 함수는 이름이 없고 일회성으로 사용된다.
/// 다트에서는 익명, 람다 함수를 구분하지 않는다.
/// 람다는 단 하나의 스테이트먼트를 실행할 때 사용한다. 명령이 아니라 명령 단위가 하나여야 한다.
void main() {
  final List<int> numbers = [1, 2, 3, 4, 5];

  // 일반 함수로 모든 값 더하기
  final allMembers = numbers.reduce((value, element) {
    return value + element;
  });
  print(allMembers); // 15

  final allMembers2 = numbers.reduce((value, element) => value + element);
  print(allMembers2); // 15
}
