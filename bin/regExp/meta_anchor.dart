import 'print_match.dart';

void main() {
  // 위치 고정 앵커 : 위치를 검색 anchor ^: 행의 처음, $: 행의 마지막
  // 패턴과 ^, $를 같이 사용하면 처음 나오는 결과, 마지막 결과로 사용 가능하다.
  RegExp regExpAnchor1 = RegExp(r'^');

  String str1 = 'pattern is pattern';

  printMatches(regExpAnchor1.allMatches(str1));

  RegExp regExpAnchor2 = RegExp(r'$');

  printMatches(regExpAnchor2.allMatches(str1));

  // 특정 용도 앵커 : \와 순수 문자를 조합시킨 앵커
  // \b, \B 단어 경계, 단어 경계를 제외한 위치
  RegExp regExpAnchor3 = RegExp(r'\b');

  printMatches(regExpAnchor3.allMatches(str1));

  // 기타 용도 앵커
  // \d 1개 숫자에 일치 [0-9] 와 동일
  // \D \d와 반대 숫자 제외한 모든 문자
  RegExp regExpAnchor4 = RegExp(r'\D');

  String str2 = '1 is one, 2 is two';

  printMatches(regExpAnchor4.allMatches(str2));

  // \w 영문자, 숫자에 일치 (공백, 특수문자 제외)
  // \W \w 제외한 모든 문자
  RegExp regExpAnchor5 = RegExp(r'\W');

  printMatches(regExpAnchor5.allMatches(str2));

  // \s 공백문자
  // \S \s 제외한 모든 문자
  RegExp regExpAnchor6 = RegExp(r'\s');

  printMatches(regExpAnchor6.allMatches(str2));

  // \. 마침표
  RegExp regExpAnchor7 = RegExp(r'\.');

  String str3 = 'flutter@dart.com';

  printMatches(regExpAnchor7.allMatches(str3));
}
