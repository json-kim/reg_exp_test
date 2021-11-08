import 'print_match.dart';

void main() {
  // '*' : '*' 앞에 있는 문자가 최소 0회 이상 있을 경우 매치
  RegExp regExpQuant1 = RegExp(r'a*b');

  String str1 = 'abfsdaabdsfebdbdfsaaaab';

  printMatches(regExpQuant1.allMatches(str1));

  // a나 b중 하나가 0~n번 반복될 경우 매치
  // 0번도 카운트 하기 때문에 모든 공백이 해당됨
  RegExp regExpQuant2 = RegExp(r'[ab]*');

  printMatches(regExpQuant2.allMatches(str1));

  // '+' : '+' 앞에 있는 문자가 최소 1회 이상 있을 경우 매치
  RegExp regExpQuant3 = RegExp(r'a+b');

  printMatches(regExpQuant3.allMatches(str1));

  // '?' : '?' 앞에 있는 문자가 최소 1회 이상 있을 경우 매치
  RegExp regExpQuant4 = RegExp(r'a?b');

  printMatches(regExpQuant4.allMatches(str1));

  // {n} : {} 앞에 있는 문자가 n회 반복일 경우 매치
  RegExp regExpQuant5 = RegExp(r'a{4}');

  printMatches(regExpQuant5.allMatches(str1));

  // {n,m} : {} 앞에 있는 문자가 n회부터 m회 반복 될 경우 매치
  // {} 안에 띄어쓰기를 사용하면 안됨 ex) {2, 4} (x)
  RegExp regExpQuant6 = RegExp(r'a{2,4}');

  printMatches(regExpQuant6.allMatches(str1));

  // {n,} : {} 앞에 있는 문자가 n개 이상일 경우 매치
  RegExp regExpQuant7 = RegExp(r'a{2,}');

  printMatches(regExpQuant7.allMatches(str1));
}
