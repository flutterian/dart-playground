// calculate는 “비동기 생성기(Async Generator)”
//  •	async* : 함수가 Stream을 생산하는 “비동기 생성기”라는 뜻이에요.
// 	•	yield : StreamController.add()처럼 이벤트 1개를 스트림으로 내보냅니다.
// 	•	await Future.delayed : 다음 이벤트를 내보내기 전 1초 동안 생성기를 잠시 멈춤합니다. (메인 쓰레드를 막지 않음)
// 	•	기본적으로 이 스트림은 cold & single-subscription:
// 	•	cold: listen()으로 구독할 때 비로소 생산을 시작.
// 	•	single-subscription: 한 번에 한 구독자만 붙을 수 있음(필요하면 asBroadcastStream()).
// 참고: 매개변수 number는 현재 코드에선 쓰이지 않아요. 나중에 로직에 활용 가능.

Stream<String> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    // StreamController의 add() 처럼 yield 키워드를 이용해서 값 반환
    yield 'i= $i';
    await Future.delayed(const Duration(seconds: 1));
  }
}

// playStream은 “구독(Subscribe)”
// 	•	listen을 호출하는 순간, calculate(1) 스트림이 생산을 시작하고
// 	•	이벤트가 올 때마다 콜백이 print(val)을 실행합니다.
// 	•	다 끝나면 스트림이 완료(onDone) 됩니다. 원하면 onDone:과 onError: 콜백도 넣을 수 있어요.

void playStream() {
  // StreamController와 마찬가지로 listen() 함수로 콜백 함수 입력
  calculate(1).listen((val) {
    print(val);
  });
}

// main은 “시작 버튼”
// 	•	프로그램이 시작되면 playStream()이 구독을 만들고 이벤트를 받기 시작합니다.
void main() {
  playStream();

  // 1초 간격으로 아래와 같이 나타남

  // i= 0
  // i= 1
  // i= 2
  // i= 3
  // i= 4
}
