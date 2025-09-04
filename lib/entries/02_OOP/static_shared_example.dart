// 특정 클래스의 모든 인스턴스가 함께 공유해야 하는 정보는 static으로 둡니다.
// 아래 예시는
// - 생성된 그룹 수(totalGroups)
// - 전체 멤버 수(totalMembers)
// - 자동 증가 ID(_nextId)를 통한 인스턴스별 고유 id
// 를 static으로 관리합니다.

class Idol {
  Idol(this.name, this.membersCount) {
    // 인스턴스가 생성될 때 클래스 전체 통계를 갱신
    totalGroups++;
    totalMembers += membersCount;

    // 각 인스턴스가 공유하는 static 시퀀스를 사용해 고유 id 부여
    _id = _nextId++;
  }

  final String name;
  final int membersCount;

  // 각 인스턴스의 고유 id (인스턴스 필드)
  late final int _id;
  int get id => _id;

  // 클래스 전체가 공유하는 정적 상태(모든 인스턴스에 공통)
  static int totalGroups = 0;
  static int totalMembers = 0;
  static int _nextId = 1;

  // 클래스 차원의 유틸리티(정적 메서드): 평균 멤버 수 계산
  static double averageMembers() {
    if (totalGroups == 0) return 0;
    return totalMembers / totalGroups;
  }

  // 디버깅/로깅 가독성을 위한 출력 형식
  @override
  String toString() => 'Idol#$id(name: $name, membersCount: $membersCount)';
}

void main() {
  // 인스턴스를 여러 개 만들어도 static 필드는 클래스 단 하나만 존재하고 공유됩니다.
  final i1 = Idol('BTS', 7);
  final i2 = Idol('BLACKPINK', 4);
  final i3 = Idol('NEWJEANS', 5);

  print(i1); // Idol#1(name: BTS, membersCount: 7)
  print(i2); // Idol#2(name: BLACKPINK, membersCount: 4)
  print(i3); // Idol#3(name: NEWJEANS, membersCount: 5)

  // 클래스 이름으로 접근하는 것이 권장되는 정적 멤버
  print('totalGroups = ${Idol.totalGroups}'); // 3
  print('totalMembers = ${Idol.totalMembers}'); // 16
  print('averageMembers = ${Idol.averageMembers()}'); // 5.333...
}
