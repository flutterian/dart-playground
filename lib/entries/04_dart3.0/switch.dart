import 'package:collection/collection.dart';

void main() {
  print(statement('월요일'));
  print(expression('화요일'));
  // 패턴 매칭
  pattern_matching('aaa'); // aaa
  pattern_matching([1, 2]); // [1, 2]
  pattern_matching([3, 4, 5]); // [_, _, _]
  pattern_matching([6, 7]); // [int 6, int 7]
  pattern_matching(('민지', 19)); // (String: 민지, int: 19)
  pattern_matching(8); // no match

  // switch 내부에서 패턴 매칭은 패턴을 보는 것으로 리스트 매칭이 되지만, 실제 아래처러 비교하면 주소를 비교해서 false 가 나오고 따로 equals 처리를 해줘야 실제 값을 비교해서 true가 나온다.
  print([3, 4] == [3, 4]); // false
  const eq = ListEquality();
  print(eq.equals([3, 4], [3, 4])); // true
}

String statement(String dayKor) {
  String dayEnglish;

  switch (dayKor) {
    case '월요일':
      dayEnglish = 'Monday';
      break;
    case '화요일':
      dayEnglish = 'Tuesday';
      break;
    case '수요일':
      dayEnglish = 'Wednesday';
      break;
    case '목요일':
      dayEnglish = 'Thursday';
      break;
    case '금요일':
      dayEnglish = 'Friday';
      break;
    case '토요일':
      dayEnglish = 'Saturday';
      break;
    case '일요일':
      dayEnglish = 'Sunday';
      break;
    default:
      dayEnglish = 'Not Found';
  }

  return dayEnglish; // Monday
}

String expression(String dayKor) {
  // switch문이 함수처럼 값을 반환
  final String dayEnglish = switch (dayKor) {
    '월요일' => 'Monday',
    '화요일' => 'Tuesday',
    '수요일' => 'Wednesday',
    '목요일' => 'Thursday',
    '금요일' => 'Friday',
    '토요일' => 'Saturday',
    '일요일' => 'Sunday',
    _ => 'Not Found', // _ 는 default 와 같은 의미로 사용됨.
  };

  return dayEnglish;
}

void pattern_matching(dynamic anything) {
  switch (anything) {
    case 'aaa': // 정확히 'aaa' 문자열만 매치
      print('match: aaa');
      break;
    case [
      1,
      2,
    ]: // 정확히 [1, 2] 리스트만 매치 -> 패턴 매칭이라서 동작하는 것임. 주소 비교가 아니라, 리스트의 구조와 값을 비교하기 때문.
      print('match: [1, 2]');
      break;
    case [_, _, _]:
      print('match [_, _, _]'); // 3개의 값이 들어 있는 리스트를 모두 매치
      break;
    case [final int a, final int b]: // 첫 번째와 두 번째 값에 int 가 입력된 리스트를 매치
      print('match: [int $a, int $b]');
      break;
    case (
      final String a,
      final int b,
    ): // 첫 번째 값에 String, 두 번째 값에 int가 입력된 Record 타입을 매치
      print('match: (String: $a, int: $b)');
      break;
    default:
      print('no match');
  }
}
