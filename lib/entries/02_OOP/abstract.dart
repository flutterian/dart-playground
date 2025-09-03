// 추상은 상속이나 인터페이스로 사용하는 데 필요한 속성만 정의하고 인스턴스화 할 수 없도록 하는 기능
// 추상 클래스는 선언까지만 해주면 된다, 함수 바디의 선언을 자식 클래스에서 필수로 정의하도록 강제한다. 강제한다는게 핵심이다.
// 상속과 인터페이스의 중간 역할.

abstract class Idol {
  Idol(this.name, this.membersCount);

  final String name;
  final int membersCount;

  void sayName(); // {} 랑 그 내용이 없어야 추상 메서드다. func(); 이러고 끝남
  void sayMembersCount();
  void sleep() {
    print('Sleeping...');
  }
}

// 추상 클래스를 상속 받는식으로 해봤는데, 자체 인스턴스화가 안되는거지 상속도 된다.
class BoyGroup extends Idol {
  BoyGroup(super.name, super.membersCount);

  @override
  void sayName() {
    print('저는 남자 아이돌 $name 입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 멤버는 $membersCount명 입니다.');
  }
}

// implements 키워드를 사용해 추상 클래스를 구현하는 클래스
class GirlGroup implements Idol {
  GirlGroup(this.name, this.membersCount);

  @override
  final String name;
  @override
  final int membersCount;

  @override
  void sayName() {
    print('저는 여자 아이돌 $name 입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 멤버는 $membersCount명 입니다.');
  }

  @override
  void sleep() {
    print('$name 는 Sleeping...');
  }
}

void main() {
  final GirlGroup blackPink = GirlGroup('블랙핑크', 4);

  blackPink.sayName(); // 저는 여자 아이돌 블랙핑크 입니다.
  blackPink.sayMembersCount(); // 블랙핑크 멤버는 4명 입니다.
  blackPink.sleep(); // 블랙핑크 는 Sleeping...

  final BoyGroup bts = BoyGroup('BTS', 7);

  bts.sayName(); // 저는 여자 아이돌 블랙핑크 입니다.
  bts.sayMembersCount(); // 블랙핑크 멤버는 4명 입니다.
  bts.sleep(); // Sleeping...

  // final Idol idol = Idol('블랙핑크', 4); // Abstract classes can't be instantiated. - 추상 클래스는 인스턴스화 안된다고 나오고 에러로 잡힌다.
}
