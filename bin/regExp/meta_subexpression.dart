import 'print_match.dart';

void main() {
  // () 서브 패턴 (그룹화) 패턴 안의 하나의 패턴을 더 적용하고 싶을 때 사용
  // 단순히 문자 하나라면 'col[ou]r' 처럼 문자열 클래스로도 적용 가능 => color or colur
  RegExp regExpSubExp = RegExp(r'col(o|ou)r');

  String str = 'color and colour are same';

  printMatches(regExpSubExp.allMatches(str));
}
