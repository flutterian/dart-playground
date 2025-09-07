void main() {
  /// 1. 리스트에서 구조 분해 사용 예제
  final newJeans = ['민지', '해린'];
  final minji = newJeans[0];
  final haerin = newJeans[1];

  print(minji);
  print(haerin);

  // 위와 아래 코드는 동일한 역할을 한다.

  final [minji2, haerin2] = ['민지2', '해린2'];

  print(minji2);
  print(haerin2);

  /// 2. 리스트에서 스프레드 연산자를 이용한 구조 분해 사용 예제
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  // 스프레드 연산자를 사용해서 중간의 값들을 버릴 수 있다.
  final [x, y, ..., z] = numbers;
  print(x); // 1
  print(y); // 2
  print(z); // 8

  /// 3. 맵에서의 구조 분해 사용 예제
  final minjiMap = {'name': '민지', 'age': 19};
  // 위의 맵의 구조와 똑같은 구조로 구조 분해
  final {'name': name, 'age': age} = minjiMap;

  print(name); // 민지
  print(age); // 19

  /// 4. 클래스에서의 구조 분해 사용 예제
  final minji5 = Idol(name: '해린', age: 22);
  final Idol(name: name2, age: age2) = minji5; // {} 없음

  print(name2); // 해린
  print(age2); // 22
}

class Idol {
  Idol({required this.name, required this.age});
  final String name;
  final int age;
}
