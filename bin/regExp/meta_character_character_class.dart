import 'print_match.dart';

void main() {
  // 문자 클래스 : 특정한 한 문자를 검색
  // '[]' 안의 문자 중 하나를 검색
  // '[]' 안에 검색할 문자들을 나열하거나 '-' 를 이용해 문자열 범위를 지정 ex) [a-z]

  // 문자들 나열
  RegExp regExpChClass1 = RegExp(r'[aeiou]');

  String str = 'Hi my name is Kim-js';

  printMatches(regExpChClass1.allMatches(str));

  // '-' 를 사용하여 범위 지정
  RegExp regExpChClass2 = RegExp(r'[a-z]');

  String str2 = '0d93kd9gdf03kd!2@';

  printMatches(regExpChClass2.allMatches(str2));

  // '^' 를 사용하여 문자 클래스 내 부정으로 사용
  // 문자 클래스 안의 문자들을 제외한 문자 검색
  RegExp regExpChClass3 = RegExp(r'[^0-9]');

  String str3 = '010-1234-5678';

  printMatches(regExpChClass3.allMatches(str3));
}
