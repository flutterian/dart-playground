// Dart에서 await의 “대기 기준”은 해당 Future가 Completed(완료) 상태로 전환될 때입니다.
// async 함수의 Future는 함수 전체가 끝날 때 완료되는 게 맞습니다. -> 성공인 경우
// Dart의 Future는 성공(Fulfilled/Completed with value) 과 실패(Completed with error) 두 가지 “완료(Complete)” 상태가 있습니다.
// 즉 에러가 발생하면 Pending → Error(Rejected) 으로 바뀌면서 그 순간 Future는 완료된 것으로 취급됩니다.
void main() {
  // twoFunctions1();
  twoFunctions2();
}

///  twoFunctions1() (await 없음 → 동시 실행)
///	1.	addNumbers(1,1) 호출 → “계산 시작” 찍고 중단/반환.
///	2.	곧바로 addNumbers(2,2) 호출 → “계산 시작” 찍고 중단/반환.
///	3.	이제 두 타이머가 거의 동시에 돌고 있어, 3초 뒤에
///	•	1+1 = 2 출력 → 이어서 1+1 코드 실행 끝
///	•	2+2 = 4 출력 → 이어서 2+2 코드 실행 끝
///	4.	호출자(twoFunctions1)는 아무것도 기다리지 않았으므로 두 작업이 겹쳐서 진행됩니다.
void twoFunctions1() {
  addNumbers(1, 1);
  addNumbers(2, 2);

  // 1 + 1 계산 시작
  // 2 + 2 계산 시작
  // 1 + 1 = 2
  // 1 + 1 코드 실행 끝
  // 2 + 2 = 4
  // 2 + 2 코드 실행 끝
}

///	await addNumbers(1,1) → 첫 호출이 완전히 끝날 때까지 대기
/// •	“계산 시작” → 3초 후 = 2 → “코드 실행 끝”.
/// 2.	그 다음 줄로 내려가 await addNumbers(2,2) 시작.
/// 3.	따라서 로그가 완전히 순차적으로 나옵니다.
void twoFunctions2() async {
  await addNumbers(1, 1);
  await addNumbers(2, 2);

  // 1 + 1 계산 시작
  // 1 + 1 = 2
  // 1 + 1 코드 실행 끝
  // 2 + 2 계산 시작
  // 2 + 2 = 4
  // 2 + 2 코드 실행 끝
}

///공통: addNumbers
///	•	들어오면 바로 print("$a + $b 계산 시작").
/// •	await Future.delayed(...)에서 이벤트 큐에 타이머를 걸고 함수는 일단 중단 → 호출자에게 **미완료 Future**를 반환.
/// •	3초 뒤 타이머가 끝나면 콜백으로 = 합을 출력하고, 이어서 중단 지점 이후로 재개되어 **"... 코드 실행 끝"**을 출력.

// async 키워드는 함수 매개변수 정의와 바디 사이에 입력. 특이하네.
Future<void> addNumbers(int number1, int number2) async {
  print('$number1 + $number2 계산 시작');

  await Future.delayed(const Duration(seconds: 3), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  print('$number1 + $number2 코드 실행 끝');
}
