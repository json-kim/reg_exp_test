import 'dart:core';

import 'print_match.dart';

void main() {
  // 검색할 문자열
  String str = 'pattern is pattern';

  // 정규표현식 pattern
  RegExp regExp = RegExp('pattern');

  // 검색
  final firstMatch = regExp.firstMatch(str);
  final allMatches = regExp.allMatches(str);
  final hasMatch = regExp.hasMatch(str);

  // 결과 출력
  printMatch(firstMatch);
  printMatches(allMatches);
  print(hasMatch);
}
