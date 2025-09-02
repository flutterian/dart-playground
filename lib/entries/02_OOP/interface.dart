// 상속은 공유되는 기능을 이어받는 개념 = 코드 재사용
// 인터페이스는 공통으로 필요한 기능을 정의만 해두는 역할, 코드 재사용 x -> 다트에는 interface 키워드는 따로 없음!, 모든 클래스가 인터페이스 역할을 할 수 있을 뿐.
// 상속은 단 하나의 클래스만 할 수 있지만 인터페이스는 적용 개수에 제한이 없음. 콤마로 이어서 계속 추가 가능.
// 인터페이스는 계약 같은 개념, 규약만 강제. "이 메서드는 반드시 구현해야한다!"
// 인터페이스로 is-a-capable-of 관계 표현 가능. ~이 가능한지 표현 가능.

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

// implements 키워드를 사용하면 원하는 클래스를 인터페이스로 사용 가능
// 상속과 달리 인터페이스는 반드시 모든 기능을 다시 정의해줘야함. -> 모두 재정의할 때 사용하는게 인터페이스
class GirlGroup implements Idol {
  GirlGroup(this.name, this.membersCount);

  @override
  final String name;
  @override
  final int membersCount;

  @override
  void sayName() {
    print('저는 여자 아이돌 $name입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 멤버는 $membersCount명 입니다!!');
  }
}
