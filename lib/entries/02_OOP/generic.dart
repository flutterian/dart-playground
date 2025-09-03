// 제네릭은 클래스나 함수의 정의를 선언할 때가 아니라 인스턴스화하거나 실행할 때로 미룬다.
// 특정 변수의 타입을 하나의 타입으로 제한하고 싶지 않을 때 자주 사용

// 인스턴스화할 때 입력 받을 타입을 T로 지정
class Cache<T> {
  Cache({required this.data});
  // data의 타입을 추후 입력될 T 타입으로 지정
  final T data;
}

void main() {
  // T의 타입을 List<int>로 입력
  final cache = Cache<List<int>>(data: [1, 2, 3]);

  // 제네릭에 입력된 값을 통해 data 변수의 타입을 자동으로 유추함
  print(cache.data.reduce((value, element) => value + element));
}
