# Dart Future & JavaScript Promise 비교 정리

## 공통점
- 둘 다 **비동기 작업의 결과를 표현**하는 객체.
- 상태(state)는 `대기(Pending)` → `완료(Fulfilled)` → `실패(Rejected)` 흐름을 가짐.
- `then`, `catchError`(Dart) / `then`, `catch`(JS) 같은 체이닝을 지원.

---

## 주요 메서드/생성자

| 기능 | Dart (Future) | JavaScript (Promise) | 설명 |
|------|---------------|-----------------------|------|
| 지연 실행 | `Future.delayed(Duration, [callback])` | `setTimeout(() => resolve(), ms)` | 일정 시간 후 콜백 실행 |
| 즉시 완료 | `Future.value(value)` | `Promise.resolve(value)` | 이미 완료된 값 반환 |
| 즉시 에러 | `Future.error(error)` | `Promise.reject(error)` | 즉시 에러 상태 반환 |
| 가장 먼저 완료된 결과 | `Future.any(list)` | `Promise.race(list)` | 여러 개 중 가장 빨리 끝난 결과 반환 |
| 모든 작업 완료 | `Future.wait(list)` | `Promise.all(list)` | 모든 Future/Promise가 완료될 때까지 대기 후 결과 반환 |
| 모든 작업 완료(에러 무시) | `Future.wait(list, eagerError: false)` | `Promise.allSettled(list)` | 성공/실패 상관없이 전체 결과 반환 |
| 동기/비동기 혼합 | `Future.sync(callback)` | (직접 동기 실행 or `Promise.resolve().then`) | 동기적 실행이 가능하면 즉시, 아니면 비동기로 감쌈 |
| 마이크로태스크 실행 | `Future.microtask(callback)` | `queueMicrotask(callback)` | 이벤트 루프에서 바로 다음에 실행 |

---

## 차이점
- **Dart**
  - `async`/`await`은 `Future` 기반.
  - 이벤트 루프에 **마이크로태스크 큐**가 있으며, `Future.microtask`로 우선순위 높은 작업 실행 가능.
  - `Future.wait`, `Future.any` 등 다양한 유틸 메서드 내장.

- **JavaScript**
  - `async`/`await`은 `Promise` 기반.
  - `Promise`는 기본적으로 **마이크로태스크 큐**에서 동작.
  - 표준 메서드는 `all`, `allSettled`, `race`, `any`가 있음.

---

> ⚡ Dart의 `Future`는 JS의 `Promise`와 거의 동일한 개념이지만, Dart는 언어 차원에서 더 풍부한 헬퍼 메서드와 **마이크로태스크 실행 제어** 기능을 제공한다.

# Dart vs JavaScript: Timer & Future.delayed 대응

## 1) Timer ↔ setTimeout
| 구분 | Dart: `Timer` | JavaScript: `setTimeout` |
|------|---------------|---------------------------|
| 사용 목적 | 일정 시간 뒤 콜백 실행 | 일정 시간 뒤 콜백 실행 |
| 기본 형태 | `Timer(Duration(seconds: 2), () { ... });` | `setTimeout(() => { ... }, 2000);` |
| 반환값 | `Timer` 객체 | timer ID (number) |
| 취소 방법 | `timer.cancel()` | `clearTimeout(id)` |
| 비동기 흐름 통합 | Future와 직접 연결되지 않음 | Promise와 직접 연결되지 않음 |

---

## 2) Future.delayed ↔ Promise delay
| 구분 | Dart: `Future.delayed` | JavaScript: `Promise delay` |
|------|-------------------------|------------------------------|
| 사용 목적 | 지연된 **비동기 작업** 실행 | 지연된 **비동기 작업** 실행 |
| 기본 형태 | `Future.delayed(Duration(seconds: 2), () { ... });` | `delay(2000).then(() => { ... });` |
| 반환값 | `Future` | `Promise` |
| 체인/await | `.then()`, `await` 가능 | `.then()`, `await` 가능 |
| 취소 방법 | 직접 취소 불가 (대신 `Timer` 활용) | 직접 취소 불가 (추가 로직 필요) |

## Dart에서 `Promise delay`구현 예시
```dart
Future<void> main() async {
  await Future.delayed(Duration(seconds: 2));
  print("done");
}
```

## JS에서 `Promise delay` 구현 예시
```javascript
function delay(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function main() {
  await delay(2000);
  console.log("done");
}
```