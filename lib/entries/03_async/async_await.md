# Dart Future vs JavaScript Promise (완료/에러 처리 비교)

| 상황 | Dart (Future) | JavaScript (Promise) | 설명 |
|------|---------------|-----------------------|------|
| 정상 완료 | `Future.value(42)` 또는 `async` 함수가 끝까지 실행됨 → **Completed with value** | `Promise.resolve(42)` 또는 `async` 함수가 끝까지 실행됨 → **Fulfilled** | 내부 코드가 모두 실행 끝나면 정상 값 반환 |
| 에러 발생 | `throw Exception()` → **Completed with error** | `throw new Error()` 또는 `Promise.reject()` → **Rejected** | Pending 상태에서 에러 발생 시 즉시 에러 상태로 전환 |
| 완료 시점 | `async` 함수 본문 끝날 때, Future가 성공/실패 여부에 따라 Complete 처리 | `async` 함수 본문 끝날 때, Promise가 Fulfilled/Rejected 처리 | 성공이든 실패든 “완료”로 간주 |
| 에러 전파 | `await f();` → `try/catch`로 잡아야 함 | `await f();` → `try/catch`로 잡거나 `.catch()` 체인 | 둘 다 `await`에서 에러가 throw 됨 |
| 여러 Future/Promise 동작 | `Future.wait([...])` → 하나라도 에러 나면 전체 Future가 에러로 Complete | `Promise.all([...])` → 하나라도 Rejected되면 전체 Promise가 Rejected | 병렬 실행 시 에러 전파 방식 동일 |
| 성공/실패 모두 결과 받기 | `Future.wait([...], eagerError: false)` → 성공/실패 상관없이 전부 결과 수집 가능 | `Promise.allSettled([...])` → 성공/실패 상관없이 결과 배열 반환 | Dart/JS 각각 확장된 메서드 제공 |

---

## 핵심 요약
- Dart `Future`와 JS `Promise`는 구조가 거의 동일:
  - **Pending → (성공) Completed/Fulfilled → (실패) Error/Rejected**
- “완료”는 단순히 코드 끝까지 실행이 아니라, **성공 값이든 에러든 Pending이 해소된 상태**를 의미함.
- `await`는 성공이면 값을, 실패면 에러를 **그 자리에서 throw** 하도록 바꿔줌.