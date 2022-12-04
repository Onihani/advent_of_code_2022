import 'dart:io' show Platform;
import '../helpers/read_input_file.dart' as read_input_file;
import '../helpers/camp_cleanup.dart' as camp_cleanup;

class Solution {
  int answer;
  List<List<String>> listOfPairOfElvesSectionStringList;

  Solution(this.answer, this.listOfPairOfElvesSectionStringList);
}

Solution campCleanup() {
  final newLine = Platform.isWindows ? '\r\n' : '\n';
  var inputText = read_input_file.readFileData('day-4.txt');

  // convert the input text to a list of strings
  // each string is the items in a given string of pair of elves for a given section
  List<String> pairOfElvesSectionStringList = inputText.split(newLine);

  // convert the list of pairOfElvesSectionStringList to a list of a list of 2 sections
  // each list of 2 sections is the items in a given string of pair of elves for a given section
  List<List<String>> listOfPairOfElvesSectionStringList =
      pairOfElvesSectionStringList.map((e) => e.split(',')).toList();

  // filter out the pair of elves sections that are subset of each other
  List<List<String>> filteredListOfPairOfElvesSectionStringList =
      listOfPairOfElvesSectionStringList
          .where((e) => camp_cleanup.checkIfTwoIntegersAreSubsets(
              int.parse(e[0].split('-')[0]),
              int.parse(e[0].split('-')[1]),
              int.parse(e[1].split('-')[0]),
              int.parse(e[1].split('-')[1])))
          .toList();

  // get the the length of the filtered list
  int answer = filteredListOfPairOfElvesSectionStringList.length;

  return Solution(answer, listOfPairOfElvesSectionStringList);
}
