import 'print_match.dart';

void main() {
  // '^' 문자열의 처음에 패턴이 있는지 검색
  RegExp regExpFirst = RegExp(r'^pattern');

  String str = 'hi pattern is pattern';

  printMatches(regExpFirst.allMatches(str));

  // '$' 문자열의 끝에 패턴이 있는지 검색
  RegExp regExpLast = RegExp(r'pattern$');

  printMatches(regExpLast.allMatches(str));

  // 메타문자 찾기 \(백슬래시) 사용
  RegExp findMetaCharacter = RegExp(r'\$');

  String strMeta = '\$ is meta character';

  printMatches(findMetaCharacter.allMatches(strMeta));
}
