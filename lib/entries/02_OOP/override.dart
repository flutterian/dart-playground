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

// override 는 부모 클래스 또는 인터페이스에서 정의된 메서드를 재정의할 때 사용
// 다트에서는 override 키워드 생략도 가능, 직접 명시하는걸 추천
class GirlGroup extends Idol {
  GirlGroup(super.name, super.membersCount);

  @override
  void sayName() {
    print('저는 여자 아이돌 $name 입니다.');
  }
}

void main() {
  final GirlGroup blackPink = GirlGroup('블랙핑크', 4);

  blackPink.sayName(); // 저는 여자 아이돌 블랙핑크 입니다. -> 오버라이드 된 메서드 사용
  blackPink.sayMembersCount(); // 블랙핑크 멤버는 4명 입니다. -> 오버라이드 안해서 기존 부모 메서드 그대로 사용
}
