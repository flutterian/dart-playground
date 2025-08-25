void main() {
  // final 과 const 키워드는 변수의 값을 처음 선언 후 변경 불가
  final String name = 'banana';
  // name = 'orange';

  const String name2 = 'melon';
  // name2 = 'coconut';

  /** 
   * final은 런타임, const는 빌드 타임 상수
   * DateTime.now() 함수는 DateTime.now() 함수가 실행되는 순간의 날짜 및 시간을 제공 = 런타임, 즉 실행을 해봐야 값을 알 수 있따는 뜻. 
   * Const 에서는 에러남. 빌드시에 값을 알 수 없기 때문.
   */

  final DateTime now = DateTime.now(); // 실행할 때마다 실행할 당시의 시간이 찍힘.
  print(now);

  // const DateTime now2 = DateTime.now(); //Error: Cannot invoke a non-'const' constructor where a const expression is expected.
  // print(now2);
}
