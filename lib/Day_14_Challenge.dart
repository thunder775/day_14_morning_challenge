

List<String> wave(String word) {
  List result = [];
  String temp = word;
  for (int i; i < word.length; i++) {
    if (word[i] != '') {
      temp[i].toUpperCase();
      result.add(temp);
      print(result);
      temp = word;
    }
  }

  return result;
}

main() {
  print(wave("edabit"));
}
