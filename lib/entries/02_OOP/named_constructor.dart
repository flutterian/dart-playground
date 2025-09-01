class Idol {
  // 생성자, 네임드 생성자 모두 선언해두면 각각 쓸 수 있는 생성자가 된다.
  // 생성자
  Idol(this.name, this.membersCount);

  // 네임드 생성자 - 여러개 선언 가능하다.
  Idol.fromMap(Map<String, dynamic> map)
    : name = map['name'],
      membersCount = map['membersCount'];

  // 기존 메서드를 쓰는 게 아니라 새로운 이름의 생성자를 내가 선언하는 개념이다.
  Idol.fromMapTest(Map<String, dynamic> map)
    : name = map['name'],
      membersCount = map['membersCount'];

  final String name;
  final int membersCount;

  void sayName() {
    print('저는 $name입니다. $name 멤버는 $membersCount명 입니다.');
  }
}

void main() {
  // 기본 생성자 사용
  final Idol blackPink = Idol('블랙핑크', 4);
  blackPink.sayName(); // 저는 블랙핑크입니다. 블랙핑크 멤버는 4명 입니다.

  // fromMap이라는 네임드 생성자 사용
  final Idol bts = Idol.fromMap({'name': 'BTS', 'membersCount': 7});
  bts.sayName(); // 저는 BTS입니다. BTS 멤버는 7명 입니다.

  final Idol bts2 = Idol.fromMapTest({'name': 'BTS', 'membersCount': 88});
  bts2.sayName(); // 저는 BTS입니다. BTS 멤버는 7명 입니다.
}
