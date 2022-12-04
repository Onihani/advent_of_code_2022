import 'dart:io' show Platform;
import '../helpers/read_input_file.dart' as read_input_file;
import '../helpers/rock_paper_scissors.dart' as rock_paper_scissors;

int rockPaperScissors() {
  final newLine = Platform.isWindows ? '\r\n' : '\n';
  var inputText = read_input_file.readFileData('day-2.txt');

  // convert the input text to a list of a list of strings
  // in each list of strings, the first string is the elves' choice the second string is your choice
  List<List<String>> listOfGameplayChoicesList =
      inputText.split(newLine).map((e) => e.split(' ')).toList();

  // calculate the sum of my score per game/round
  int myScore = listOfGameplayChoicesList
      .map((e) => rock_paper_scissors.calculateSingleGameResult(e[0], e[1]))
      .reduce((accum, current) => accum + current);

  // return the sum of my score
  return myScore;
}
