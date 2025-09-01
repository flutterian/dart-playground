class Idol {
  String _name = '블랙핑크';

  String get name {
    return _name;
  }

  set name(String name) {
    _name = name;
  }
}

void main() {
  final Idol blackPink = Idol();
  print(blackPink._name); // 블랙핑크

  blackPink.name = '에이핑크';
  print(blackPink._name); // 에이핑크
}
