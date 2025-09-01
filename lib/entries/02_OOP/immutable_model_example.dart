class Idol {
  // const 생성자를 제공 - const 생성자로 같은 값의 객체를 만들면 새로 만들지 않고 기존 상수 객체를 재사용합니다.
  const Idol({required this.name, required this.membersCount});
  // 불변 모델: 모든 필드를 final로 선언
  final String name;
  final int membersCount;

  // 수정이 필요하면 '새 인스턴스'를 반환하는 copyWith를 사용
  Idol copyWith({String? name, int? membersCount}) {
    return Idol(
      name: name ?? this.name,
      membersCount: membersCount ?? this.membersCount,
    );
  }

  // toString 오버라이드
  // - 모든 클래스는 기본적으로 Object.toString()을 상속받습니다.
  //   (기본 구현은 "Instance of 'Idol'" 같은 형태)
  // - print(idol)처럼 객체를 출력하거나, 문자열 보간("$idol")을 사용할 때
  //   toString()이 자동으로 호출되어 사람이 읽기 좋은 문자열을 반환합니다.
  // - 디버깅/로깅 시 가독성을 높이기 위해 toString 을 주로 오버라이드합니다.
  // - 원칙적으로 부수효과가 없어야 하며, 예외를 던지지 않는 가벼운 구현이 좋습니다.
  @override
  String toString() => 'Idol(name: $name, membersCount: $membersCount)';
}

void main() {
  // 1) 최초 인스턴스
  final idol1 = const Idol(name: 'BTS', membersCount: 7);

  // 2) 직접 변경은 불가 (final 필드)
  // idol1.name = 'TXT'; // 컴파일 에러: final 필드에 할당 불가

  // 3) 변경이 필요하면 값만 바뀐 '새 인스턴스'를 생성
  final idol2 = idol1.copyWith(name: 'TXT');

  // idol1은 그대로, idol2는 변경된 값
  print(idol1); // Idol(name: BTS, membersCount: 7)
  print(idol2); // Idol(name: TXT, membersCount: 7)

  // 서로 다른 객체(참조)임을 확인
  print(identical(idol1, idol2)); // false

  // 값이 완전히 동일해도 copyWith는 새 인스턴스를 반환
  final idol3 = idol1.copyWith();
  print(idol3); // Idol(name: BTS, membersCount: 7)
  print(identical(idol1, idol3)); // false

  // const 생성자는 동일한 상수 리터럴을 정규화하여 동일 참조를 가리킵니다.
  const idolA = Idol(name: 'APINK', membersCount: 5);
  const idolB = Idol(name: 'APINK', membersCount: 5);
  print(identical(idolA, idolB)); // true
}
