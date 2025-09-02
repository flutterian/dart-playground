// 상속은 어떤 클래스의 기능을 다른 클래스가 사용할 수 있게하는 기법
class Idol {
  Idol(this.name, this.membersCount);

  final String name;
  final int membersCount;

  void sayName() {
    print('저는 $name입니다.');
  }

  void sayMembersCount() {
    print('$name 멤버는 $membersCount명 입니다.');
  }
}

// extends 키워드를 사용해서 상속,
// class 자식 클래스 extends 부모 클래스
// 자식 클래스는 부모 클래스의 모든 기능을 상속 받음.
class BoyGroup extends Idol {
  // 상속받은 생성자
  BoyGroup(super.name, super.membersCount); // super는 부모 클래스를 지칭함

  // 상속받지 않은 기능
  void sayMale() {
    print('저는 남자 아이돌 입니다.');
  }
}

void main() {
  final BoyGroup bts = BoyGroup('BTS', 7);

  bts.sayName(); // 저는 BTS입니다.
  bts.sayMembersCount(); // BTS 멤버는 7명 입니다.
  bts.sayMale(); // 저는 남자 아이돌 입니다.
}
