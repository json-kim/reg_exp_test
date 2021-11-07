void printMatches(Iterable<RegExpMatch> matches) {
  if (matches.isNotEmpty) {
    print('allMatches : {');
  }
  for (RegExpMatch match in matches) {
    printMatch(match);
  }
  if (matches.isNotEmpty) {
    print('}');
  }
}

void printMatch(RegExpMatch? match) {
  if (match == null) {
    return;
  }

  print('''
  (start, end  : ${match.start}, ${match.end},
   output      : ${match.input.substring(0, match.start)}[${match.input.substring(match.start, match.end)}]${match.input.substring(match.end, match.input.length)}),''');
}
