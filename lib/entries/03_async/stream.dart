import 'dart:async';

/// Future 는 반환값을 딱 한 번 받아내는 비동기 프로그래밍
/// Stream 은 지속적으로 값을 반환 받을 때 사용
/// Stream 을 사용하려면 dart:async 패키지 필요

void main() {
  final controller = StreamController(); // StreamController 선언
  final stream = controller.stream; // Stream 가져오기

  // Stream 에 listen() 함수를 실행하면 값이 주입될 떄마다 콜백함수를 실행
  final streamListener1 = stream.listen((val) {
    print(val);
  });

  // Stream에 값 주입
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
}
