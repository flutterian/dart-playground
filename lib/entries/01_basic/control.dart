enum Status { approved, pending, rejected }

void main() {
  /// if 문
  final int number = 4;

  if (number % 3 == 0) {
    print('3의 배수');
  } else if (number % 3 == 1) {
    print('나머지가 1');
  } else {
    print('맞는 조건이 없습니다.');
  }

  /// switch 문
  final Status status = Status.approved;

  switch (status) {
    case Status.approved:
      print('승인 상태');
      break;
    case Status.pending:
      print('대기 상태');
      break;
    case Status.rejected:
      print('거절 상태');
      break;
    default:
      print('알 수 없는 상태');
  }

  print(Status.values);
}
