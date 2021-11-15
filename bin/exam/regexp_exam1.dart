import '../regExp/print_match.dart';

void main() {
  String s = 'abcdabc';
  String s2 = 'aaaaaa';
  RegExp regExp = RegExp(r'(\w*)\w*(\1)');

  printMatches(regExp.allMatches(s));

  // 앵커 ^(시작위치) $(끝위치) 를 지정하지 않으면 결과가 2개 출력되고,
  // 그 중 하나가 공백으로 나옵니다.
  // 공백도 패턴을 만족하기 때문입니다.

  RegExp regExp2 = RegExp(r'^(\w*)\w*(\1)$');

  printMatches(regExp2.allMatches(s));

  printGroup(regExp2.firstMatch(s));

  // 역참조를 사용하여 캡처링 그룹의 결과를 참조할 수 있습니다.
  // /1 : 첫번째 캡처링 그룹의 결과
  String s3 = 'trellis llama webbing swagger';

  RegExp regExp3 = RegExp(r'(\w)\1');

  printMatches(regExp3.allMatches(s3));
  printGroup(regExp3.firstMatch(s3));
}
