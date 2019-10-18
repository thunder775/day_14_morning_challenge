// Challenge 1
// Write test cases for the next two challenges and let them fail

// Challenge 2
// Create a function that takes a number and returns its multiplicative persistence,
// which is the number of times you must multiply the digits in num until you reach a single digit.
// multiplicative(39) ➞ 3
/// Because 3 * 9 = 27, 2 * 7 = 14, 1 * 4 = 4 and 4 has only one digit.
int multiplicative(int number) {
  String value = number.toString();
  int temp = 1;
  int count = 0;
  while (true) {
    count++;
    for (int i = 0; i < value.length; i++) {
      temp *= int.parse(value[i]);
    }
    if (temp ~/ 10 != 0) {
      value = temp.toString();
      temp = 1;
      continue;
    }
    if (temp ~/ 10 == 0) {
      break;
    }
  }
  return count;
}

// Challenge 3
// Mexican Wave Simulator
/// The wave (known as a Mexican wave in the English-speaking world outside North
/// America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms.
//  https://s3.amazonaws.com/edabit-images/mex.gif
//  Create a function that takes a string and turns it into a Mexican Wave.
//  Examples
//  wave("edabit") ➞ ["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]

//  wave("just do it") ➞ ["Just do it", "jUst do it", "juSt do it", "jusT do it", "just Do it", "just dO it", "just do It", "just do iT"]

//  wave(" ") ➞ []
List<String> wave(String word) {
  List<String> result = [];
  String temp = word;
  for (int i = 0; i < word.length; i++) {
    if (word[i] != ' ') {
      temp = temp.substring(0, i) +
          temp[i].toUpperCase() +
          temp.substring(i + 1, temp.length);

      result.add(temp);

      temp = word;
    }
  }

  return result;
}

main() {
  print(wave('just do it'));
  print(multiplicative(39));
}
