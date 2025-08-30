void main() {
  // try catch. JS랑 똑같은듯.

  try {
    final String name = 'test';
    print(name); // test
  } catch (e) {
    print(e);
  }

  try {
    final String name = 'test';

    throw Exception('이름이 틀렸음');

    print(name);
  } catch (e) {
    print(e); // 이름이 틀렸음
  }
}
