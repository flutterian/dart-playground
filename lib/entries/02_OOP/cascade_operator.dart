// 케스케이드 연산자는 .. (점 2개) 기호를 사용
// 인스턴스에서 해당 인스턴스의 속성이나 멤버 함수를 연속해서 사용하는 기능
// 새로운 값을 리턴 받아서 이어가는게 아니고 그냥 항상 원래 객체(this)를 반환해서 사용

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

void main() {
  final Idol blackPink = Idol('블랙핑크', 4)
    ..sayName() // 저는 블랙핑크입니다.
    ..sayMembersCount(); // 블랙핑크 멤버는 4명 입니다.
}
