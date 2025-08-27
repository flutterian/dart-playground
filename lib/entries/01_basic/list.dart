void main() {
  // 리스트에 넣을 타입을 <> 사이에 명시
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  print(blackPinkList); // [리사, 지수, 제니, 로제]
  print(blackPinkList[0]); // 리사
  print(blackPinkList[3]); // 로제
  print(blackPinkList.length); // 4

  blackPinkList[3] = '파스타';
  print(blackPinkList); // [리사, 지수, 제니, 파스타]

  /** add() 함수 ~ JS: push() 느낌 */
  blackPinkList.add('테스트');
  print(blackPinkList); // [리사, 지수, 제니, 파스타, 테스트]

  /** removeLast() 함수 ~ JS: pop() 느낌 */
  String last = blackPinkList.removeLast();
  print(blackPinkList); // [리사, 지수, 제니, 파스타]
  print(last); // 테스트

  /** where() 함수 ~ JS: filter() 느낌, 반환 값이 iterable로 달라지긴함. */
  final newList = blackPinkList.where((name) => name == '리사' || name == '지수');
  print(newList); // (리사, 지수) - iterable이 반환됨.
  print(newList.toList()); // [리사, 지수]

  /** map() 함수 ~ JS: map(), iterable 반환 */
  final newBlackPink = blackPinkList.map((name) => '블랙핑크 $name');
  print(newBlackPink); // (블랙핑크 리사, 블랙핑크 지수, 블랙핑크 제니, 블랙핑크 파스타)
  print(newBlackPink.toList()); // [블랙핑크 리사, 블랙핑크 지수, 블랙핑크 제니, 블랙핑크 파스타]

  /** reduce() 함수 ~ JS: reduce(), iterable 말고 List 멤버의 타입과 동일한 타입 반환, 리스트 요소들의 타입이 모두 같아야함. */
  final allMembers = blackPinkList.reduce(
    (value, element) => '$value, $element',
  );
  print(allMembers); // 리사, 지수, 제니, 파스타
  print(allMembers.runtimeType); // String

  /** fold() 함수 - map 이랑 실행 논리는 동일하나 어떠한 타입이든 반환 가능 */
  final allMembers2 = blackPinkList.fold<int>(
    0,
    (value, element) => value + element.length,
  );
  print(allMembers2); // 9 (0 + 2 + 2 + 2 + 3) 각 이름의 길이를 더한 값.
}
