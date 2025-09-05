# Dart Future vs Dart Stream vs RxJS Observable

## 핵심 요약
- **Future**: 비동기 결과 **하나**를 표현 (택배 1개 도착).
- **Stream**: 비동기적으로 들어오는 **여러 이벤트**를 표현 (택배 구독 서비스).
- **RxJS Observable**: Stream과 개념적으로 비슷하지만, **더 풍부한 연산자**와 **리액티브 프로그래밍 철학**을 담은 라이브러리.

---

## Observer 패턴 관점
- Dart Stream과 RxJS Observable 모두 **Observer(구독자)**가 **Observable/Stream(발행자)**로부터 이벤트를 전달받는 구조.
- 발행자 → `add`/`next` 로 이벤트 발행.
- 구독자 → `listen`/`subscribe` 로 이벤트 수신.
- 완료 시점, 에러 처리 모두 비슷한 방식으로 동작.

---

## 비교 표

| 구분 | Dart Future | Dart Stream | RxJS Observable |
|------|-------------|-------------|-----------------|
| 제공 단위 | 단일 값 1개 | 여러 값 (0개 이상) | 여러 값 (0개 이상) |
| 완료 시점 | 값 1개 전달 후 완료 | `close()` 호출 시 완료 | `complete()` 호출 시 완료 |
| 에러 처리 | `Future.error(e)` | `addError(e)` → `onError` | `observer.error(e)` |
| 구독 방법 | `await future` 또는 `.then(...)` | `stream.listen(...)` / `await for (...)` | `.subscribe(...)` |
| 변환 연산 | `.then`, `.catchError` | `.map`, `.where`, `.asyncMap`, ... (기본 연산 위주) | `.map`, `.filter`, `.mergeMap`, `debounceTime`, ... (풍부한 연산자) |
| 동작 철학 | **비동기 결과 1회** | **비동기 이벤트 흐름** | **리액티브 프로그래밍 전체 패러다임** |
| 라이브러리 | Dart 표준 (`dart:async`) | Dart 표준 (`dart:async`) | 외부 라이브러리 (RxJS) |

---

## 비유
- **Future** = "택배 한 건 배송"
- **Stream** = "택배 구독 서비스 (매주 배송)"
- **RxJS Observable** = "택배 구독 + 강력한 배송 관리 시스템 (묶음 배송, 지연 배송, 합배송 등)"

---
