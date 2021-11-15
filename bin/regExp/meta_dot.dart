import 'print_match.dart';

void main() {
  // '.' : 임의 한 문자(모든 문자) 에 매치
  // 단 줄바꿈 문자만은 예외
  RegExp regExpDot = RegExp(r'.');

  String str = 'dot(.) is for what?\n\t';

  printMatches(regExpDot.allMatches(str));

  // '.' 활용하기
  RegExp regExpDot2 = RegExp(r'ab.');

  String str2 = 'absadsvsabdsab';

  printMatches(regExpDot2.allMatches(str2));

  RegExp regExpDot3 = RegExp(r'.*');

  printMatches(regExpDot3.allMatches(str2));

  RegExp regExpDot4 = RegExp(r'ab.*');

  printMatches(regExpDot4.allMatches(str2));

  RegExp regExpDot5 = RegExp(r'.+');

  printMatches(regExpDot5.allMatches(str2));

  RegExp regExpDot6 = RegExp(r's.*d');

  printMatches(regExpDot6.allMatches(str2));
}
