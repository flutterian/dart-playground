void main() {
  /** Set<타입> 세트이름 형식. 중복 없는 값들의 집합 */
  Set<String> blackPink = {'로제', '지수', '리사', '제니', '제니'};

  print(blackPink); // {로제, 지수, 리사, 제니}, 중복 제거
  print(blackPink.contains('로제')); // true
  List<String> list = blackPink.toList();
  print(list); // [로제, 지수, 리사, 제니] - Set 타입에서 List 타입으로 변환해서 반환
  print(blackPink); // {로제, 지수, 리사, 제니}, 기존 Set은 그대로 유지

  List<String> blackPink2 = ['로제', '지수', '지수'];
  print(Set.from(blackPink2)); // {로제, 지수} - List 타입을 Set 타입으로 변환, 중복 제거
}
