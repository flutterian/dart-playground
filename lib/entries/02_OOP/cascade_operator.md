## Dart `..` (cascade) vs JavaScript `.then()` 비교

| 구분         | Dart `..` (cascade)                                | JavaScript `.then()`                          |
|--------------|----------------------------------------------------|-----------------------------------------------|
| 체인 대상    | **같은 객체(this)**                                | **앞선 Promise의 결과**                        |
| 목적         | 한 객체에 여러 설정/메서드 호출                     | 비동기 결과를 순차적으로 처리                   |
| 리턴         | 항상 원래 객체 반환                                | 앞선 `.then()`의 반환값을 다음 체인으로 전달    |
| 주 사용처    | 객체 초기화, 빌더 패턴                             | 비동기 흐름 제어                               |

## 빌더 패턴 (Builder Pattern) 예시

### 문제 상황: 생성자에 많은 인자가 필요한 경우
```dart
class User {
  final String name;
  final int age;
  final String? address;
  final String? phone;
  final String? email;

  User(this.name, this.age, this.address, this.phone, this.email);
}

void main() {
  var user = User("Alice", 25, "Seoul", "010-1111-2222", "test@test.com");
}
```

### 캐스케이드(..) 활용한 빌더 패턴으로 해결
```dart
class User {
  String? name;
  int? age;
  String? address;
  String? phone;
  String? email;

  User();
}

void main() {
  final user = User()
    ..name = "Alice"
    ..age = 25
    ..address = "Seoul"
    ..phone = "010-1111-2222"
    ..email = "test@test.com";

  print(user.name); // Alice
}
```