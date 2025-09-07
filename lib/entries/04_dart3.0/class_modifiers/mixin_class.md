# Dart `class` vs `mixin` vs `mixin class`

## 핵심 요약
- **class**: 일반적인 클래스 → `extends` 가능, `with` 불가능
- **mixin**: 전용 mixin → `with` 가능, `extends` 불가능
- **mixin class**: 둘 다 가능 → `extends` + `with` 모두 가능

## 왜 mixin class가 필요한가?
- class는 mixin으로 쓸 수 없고
- mixin은 상속으로 쓸 수 없음
- 그래서 두 가지 역할을 동시에 가능하게 하는 새로운 제한자가 필요했음
- mixin class는 코드 재사용성을 높이고, **이 타입은 클래스도 되고 mixin도 된다**는 의도를 명확히 표현


---

## 비교 표

| 구분 | `class` | `mixin` | `mixin class` |
|------|----------|----------|----------------|
| **extends (상속)** | ✅ 가능 | ❌ 불가 | ✅ 가능 |
| **with (mixin 적용)** | ❌ 불가 | ✅ 가능 | ✅ 가능 |
| **생성자** | 가능 | 불가 | 가능 |
| **필드/상태** | 가능 | 가능 (제약 있음) | 가능 |
| **사용 의도** | 일반 클래스, 상속 계층 구조 정의 | 다중 상속 흉내 → 행동 조각 공유 | 클래스+믹스인 겸용, 코드 재사용 범용성 ↑ |
| **언어 레벨 의도** | 전통적인 OOP 클래스 | mixin 전용, 상속 차단 | "상속도 되고, mixin도 된다"는 것을 **명시적으로 표현** |

---

## 코드 예시

### 1. `class`
```dart
class Animal {
  void eat() => print('먹는다');
}

class Dog extends Animal {}
// class Dog with Animal {} // ❌ 불가능
```

### 2. `mixin`
```dart
mixin Fly {
  void fly() => print('난다');
}

class Bird with Fly {}      // ✅ 가능
// class Bird extends Fly {} // ❌ 불가능
```

### 3. `mixin class`
```dart
mixin class Logger {
  void log(String msg) => print(msg);
}

class BaseLogger extends Logger {} // ✅ 상속 가능
class Service with Logger {}       // ✅ mixin 가능

void main() {
  BaseLogger().log('상속으로 사용');
  Service().log('믹스인으로 사용');
}
```