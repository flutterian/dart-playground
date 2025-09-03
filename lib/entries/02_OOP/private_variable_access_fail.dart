import 'package:dart_playground/entries/02_OOP/private_variable.dart';

void main() {
  final idol = Idol('블랙핑크');

  // 다른 파일(다른 라이브러리)에서 프라이빗 필드 접근 시도 -> 오류 발생
  // error: The getter '_name' isn't defined for the class 'Idol'.
  // 아예 정의되어 있지 않다면서 에러 발생
  // (프라이빗 식별자 `_`는 같은 라이브러리(보통 같은 파일)에서만 접근 가능)
  // print(idol._name); // <- 접근 불가 예시, 에러남.
}
