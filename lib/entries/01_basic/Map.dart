void main() {
  Map<String, String> dictionary = {
    'Harry potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  print(dictionary['Harry potter']); // 해리 포터
  print(
    dictionary,
  ); // {Harry potter: 해리 포터, Ron Weasley: 론 위즐리, Hermione Granger: 헤르미온느 그레인저}

  /** 키와 값 반환하기 */
  print(
    dictionary.keys,
  ); // (Harry potter, Ron Weasley, Hermione Granger) - iterator
  print(dictionary.values); // (해리 포터, 론 위즐리, 헤르미온느 그레인저) - iterator
}
