// class 키워드를이 입력 후 클래스명을 지정해 클래스를 선언
class Idol {
  // 클래스에 종속되는 변수 지정 가능
  String name = '블랙핑크';

  // 클래스에 종속되는 함수도 지정 가능 = 메서드
  void sayName() {
    final String name = '테스트';
    // 클래스 내부 속성 지칭은 this 로 가능 - this 키워드는 현재 클래스를 의미
    // 결과적으로 this.name 은 Idol 클래스의 name 변수를 지칭
    print('저는 ${this.name} 입니다.'); // 블랙핑크
    // 스코프 안에 같은 속성 이름이 하나만 존재하면 this 생략 가능, 여러개면 생략 불가능
    print('저는 $name 입니다.'); // 테스트
  }
}

void main() {
  /// 변수 타입을 Idol로 지정하고
  /// Idol 인스턴스를 생성 가능
  /// 인스턴스를 생성할 때는 함수를 실행하는 것처럼, 인스턴스화 하고 싶은 클래스에 괄호를 넣어준다.
  final Idol blackPink = Idol(); // Idol 인스턴스 생성
  // 재할당된 코드가 없어서 저장시에 린트로 인해 final 들어감.

  blackPink.sayName();
  // 저는 블랙핑크 입니다.
  // 저는 테스트 입니다.
}
