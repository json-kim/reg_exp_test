import 'print_match.dart';

void main() {
  // '^' 뒤에 오는 패턴을 검색하여 첫번째 결과를 찾음
  RegExp regExpFirst = RegExp(r'^pattern');

  String str = 'pattern is pattern';

  printMatch(regExpFirst.firstMatch(str));
  printMatches(regExpFirst.allMatches(str));

  // '$' 앞에 오는 패턴을 검색하여 마지막 결과를 찾음
  RegExp regExpLast = RegExp(r'pattern$');

  printMatch(regExpLast.firstMatch(str));
  printMatches(regExpLast.allMatches(str));

  // 메타문자 찾기 \(백슬래시) 사용
  RegExp findMetaCharacter = RegExp(r'\$');

  String strMeta = '\$ is meta character';

  printMatches(findMetaCharacter.allMatches(strMeta));
}
