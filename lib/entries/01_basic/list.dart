void main() {
  // 리스트에 넣을 타입을 <> 사이에 명시
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  print(blackPinkList); // [리사, 지수, 제니, 로제]
  print(blackPinkList[0]); // 리사
  print(blackPinkList[3]); // 로제
  print(blackPinkList.length); // 4

  blackPinkList[3] = '파스타';

  print(blackPinkList); // [리사, 지수, 제니, 파스타]

  // add() 함수 ~ push()
  blackPinkList.add('테스트');
  print(blackPinkList); // [리사, 지수, 제니, 파스타, 테스트]

  // removeLast() 함수 ~ pop()
  String last = blackPinkList.removeLast();
  print(blackPinkList); // [리사, 지수, 제니, 파스타]
  print(last); // 테스트
}
