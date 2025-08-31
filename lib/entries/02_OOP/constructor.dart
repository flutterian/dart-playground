class Idol {
  // 생성자 선언, 클래스와 같은 이름이어야함.
  // 함수의 매개변수를 선언하는 것처러 매개변수를 지정해줌.

  // this를 사용할 경우 해당되는 변수에 자동을 매개변수가 저장됩니다.
  Idol(this.name);
  final String name;

  void sayName() {
    print('저는 $name 입니다.');
  }
}

void main() {
  final Idol blackPink = Idol('블랙핑크');
  blackPink.sayName(); // 저는 블랙핑크 입니다.

  final Idol bts = Idol('BTS');
  bts.sayName(); // 저는 BTS 입니다.
}
