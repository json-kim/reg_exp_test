import 'dart:core';

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

void printMatches(Iterable<RegExpMatch> matches) {
  for (RegExpMatch match in matches) {
    printMatch(match);
  }
}

void printMatch(RegExpMatch? match) {
  if (match == null) {
    return;
  }

  print('''
  start       : ${match.start},
  end         : ${match.end},
  pattern     : ${match.pattern},
  groupCount  : ${match.groupCount},
  input       : ${match.input},
  ''');
}
