// 특정 클래스의 모든 인스턴스가 함께 공유해야 하는 정보는 static으로 둡니다.
// 아래 예시는
// - 생성된 그룹 수(totalGroups)
// - 전체 멤버 수(totalMembers)
// - 자동 증가 ID(_nextId)를 통한 인스턴스별 고유 id
// 를 static으로 관리합니다.

class Idol {
  Idol(this.name, this.membersCount) {
    // 생성 시: 누적/활성 통계를 갱신
    totalGroups++; // 누적 생성 수
    totalMembers += membersCount; // 누적 멤버 수
    aliveGroups++; // 현재 살아있는 인스턴스 수
    aliveMembers += membersCount; // 현재 살아있는 멤버 수 합

    // 각 인스턴스가 공유하는 static 시퀀스를 사용해 고유 id 부여
    _id = _nextId++;
  }

  final String name;
  final int membersCount;

  // 각 인스턴스의 고유 id (인스턴스 필드)
  late final int _id;
  int get id => _id;

  // 클래스 전체가 공유하는 정적 상태(모든 인스턴스에 공통)
  static int totalGroups = 0; // 누적 생성된 그룹 수
  static int totalMembers = 0; // 누적 멤버 수 합
  static int aliveGroups = 0; // 현재 생존한 그룹 수
  static int aliveMembers = 0; // 현재 생존한 멤버 수 합
  static int _nextId = 1;

  // 클래스 차원의 유틸리티(정적 메서드): 평균 멤버 수 계산
  static double averageMembers() {
    if (totalGroups == 0) return 0;
    return totalMembers / totalGroups;
  }

  // 디버깅/로깅 가독성을 위한 출력 형식
  @override
  String toString() => 'Idol#$id(name: $name, membersCount: $membersCount)';

  // 수명 종료를 명시적으로 알리는 메서드
  // Dart에는 C++/Java의 소멸자처럼 자동으로 호출되는 파괴자가 없으므로
  // 인스턴스를 더 이상 쓰지 않을 때는 명시적으로 dispose를 호출해 통계를 갱신합니다.
  bool _disposed = false;
  void dispose() {
    if (_disposed) return; // 중복 호출 방지
    aliveGroups--;
    aliveMembers -= membersCount;
    _disposed = true;
  }
}

void main() {
  // 인스턴스를 여러 개 만들어도 static 필드는 클래스 단 하나만 존재하고 공유됩니다.
  final i1 = Idol('BTS', 7);
  dynamic i2 = Idol('RANDOM Group', 4);
  final i3 = Idol('NEWJEANS', 5);

  print(i1); // Idol#1(name: BTS, membersCount: 7)
  print(i2); // Idol#2(name: BLACKPINK, membersCount: 4)
  print(i3); // Idol#3(name: NEWJEANS, membersCount: 5)

  // 클래스 이름으로 접근하는 것이 권장되는 정적 멤버
  print('totalGroups = ${Idol.totalGroups}'); // 3
  print('totalMembers = ${Idol.totalMembers}'); // 16
  print('averageMembers = ${Idol.averageMembers()}'); // 5.333...

  // 현재 생존 통계
  print('aliveGroups(before dispose) = ${Idol.aliveGroups}'); // 3
  print('aliveMembers(before dispose) = ${Idol.aliveMembers}'); // 16

  // 인스턴스를 더 이상 사용하지 않을 때 수동으로 해제(dispose)
  i2.dispose();
  i2 = null;
  print(i2);
  print('aliveGroups(after dispose) = ${Idol.aliveGroups}'); // 2
  print('aliveMembers(after dispose) = ${Idol.aliveMembers}'); // 12
}
