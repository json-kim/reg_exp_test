import 'print_match.dart';

void main() {
  // '|' or 2개 이상의 패턴 중 하나를 선택할 때 사용
  RegExp regExpSelection1 = RegExp(r'a|b');

  String str = 'abcdfeacbsd';

  printMatches(regExpSelection1.allMatches(str));

  RegExp regExpSelection2 = RegExp(r'a|b|c');

  printMatches(regExpSelection2.allMatches(str));
}
