// 다른 클래스에 끼워 넣을 수 있는 재사용 가능한 코드 조각, with 키워드 사용.
// 특정 클래스를 지정해서 속성 정의 가능, 지정한 클래스를 상속하는 클래스에서도 사용 가능
// 한 개의 클래스에 여러개의 믹스인 적용 가능
// 상속과 인터페이스 중간쯤 되는 개념.
// 공통 기능을 여러 클래스에 공유할 때 사용.
// 다중 상속 지원이 안되는데, mixin으로 그와 비슷한 효과를 구현.

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

// 클래스가 아니므로 상태(필드)를 직접 가지고 있지 않음.
mixin IdolSingMixin on Idol {
  void sing() {
    print('$name이(가) 노래를 부릅니다.');
  }
}

// 믹스인 적용시 with 키워드 사용
class BoyGroup extends Idol with IdolSingMixin {
  BoyGroup(super.name, super.membersCount);

  void sayMale() {
    print('저는 남자 아이돌 입니다.');
  }
}

void main() {
  final BoyGroup bts = BoyGroup('BTS', 7);

  bts.sing(); // BTS이(가) 노래를 부릅니다.
}
