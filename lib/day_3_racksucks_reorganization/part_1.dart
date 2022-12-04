import 'dart:io' show Platform;
import '../helpers/read_input_file.dart' as read_input_file;
import '../helpers/rucksacks_reorganization.dart' as rucksacks_reorganization;

class Solution {
  int answer;
  List<String> rucksacksItemsStringList;

  Solution(
    this.answer,
    this.rucksacksItemsStringList,
  );
}

Solution ruckSacksReorganization() {
  final newLine = Platform.isWindows ? '\r\n' : '\n';
  var inputText = read_input_file.readFileData('day-3.txt');

  // convert the input text to a list of string
  // each string is the items in a given rucksack
  List<String> rucksacksItemsStringList = inputText.split(newLine);

  // convert the list of rucksacksItemsStringList to a list of a list of 2 strings with equal length
  // each list of 2 equal parts is the items in a given rucksack
  List<List<String>> listOfRucksacksItemsStringList = rucksacksItemsStringList
      .map((e) => rucksacks_reorganization.splitStringTo2EqualParts(e))
      .toList();

  // convert the listOfRucksacksItemsStringList in to a list of integers
  // each integer is the character code of the common character of the string with equal length
  List<int> listOfRucksacksCommonCharactersCodeList =
      listOfRucksacksItemsStringList
          .map((e) => rucksacks_reorganization
              .findCommonCharactersCodeOfTwoStrings(e[0], e[1]))
          .toList();

  // get the sum of the list of integers
  var answer = listOfRucksacksCommonCharactersCodeList
      .reduce((accum, current) => accum + current);

  // return the answer and the list of rucksacksItemsStringList
  return Solution(answer, rucksacksItemsStringList);
}
