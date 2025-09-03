// 보통 변수와 메서드들은 클래스의 인스턴스에 귀속됨
// static 키워드를 사용하면 클래스 자체에 귀속됨
// this 사용 안함
// 인스턴스끼리 공유해야하는 정보에 지정

class Counter {
  Counter() {
    i++;
    print(i);
  }
  static int i = 0;
}

void main() {
  final Counter count1 = Counter(); // 1
  final Counter count2 = Counter(); // 2
  final Counter count3 = Counter(); // 3
}
