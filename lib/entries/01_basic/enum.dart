/// enum 은 한 변수의 값을 몇가지 옵션으로 제한, main 밖에 있음.
enum Status { approved, pending, rejected }

void main() {
  Status status = Status.approved;
  print(status); // Status.approved, 그냥 approved가 아니라 Status.approved 로 찍힘
}
