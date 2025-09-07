void main() {
  /// 포지셔널 파라미터를 이용한 레코드

  final (String, int) minji = ('민지', 20);
  print(minji); // (민지, 20)

  // final (String, int) minji2 = (20, '민지'); // invalid_assignment 에러

  // 레코드에 정의할 수 있는 값의 개수에는 제한이 없음.
  final (String, int, bool) minji3 = ('민지', 20, true);
  print(minji3);

  // 레코드의 특정 순서의 값을 가져오고 싶다면 $을 사용하면 됨
  print(minji.$1); // 민지
  print(minji.$2); // 20

  print(minji3.$3); // true

  /// 네임드 파라미터를 이용한 레코드

  final ({String name, int age}) minji4 = (name: '민지', age: 20);

  print(minji4); // (age: 20, name: 민지)
}
