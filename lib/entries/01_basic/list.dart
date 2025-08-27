void main() {
  // 리스트에 넣을 타입을 <> 사이에 명시
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  print(blackPinkList);
  print(blackPinkList[0]);
  print(blackPinkList[3]);
  print(blackPinkList.length);

  blackPinkList[3] = '파스타';
  print(blackPinkList);

  /** print 결과
   [리사, 지수, 제니, 로제]
   리사
   로제
   4
   [리사, 지수, 제니, 파스타]
   */
}
