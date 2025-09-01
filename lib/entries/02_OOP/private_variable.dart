class Idol {
  Idol(this._name);
  // 일반적으로 프라이빗 변수는 클래스 내부에서만 사용하는 변수를 칭하지만, 다트에서는 같은 파일에서만 접근 가능한 변수임.
  // '_' 로 변수명을 시작하면 프라이빗 변수
  final String _name;
}

void main() {
  final Idol blackPink = Idol('블랙핑크');

  // 같은 파일에서는 _name 변수에 접근 가능, 다른 파일에서는 접근 불가. - 조금 더 스코프가 넓은 느낌.
  print(blackPink._name); // 블랙핑크
}
