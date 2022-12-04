import 'dart:io' show Platform;
import '../helpers/read_input_file.dart' as read_input_file;

class Solution {
  int answer;
  List<int> elvesTotalCaloriesList;

  Solution(
    this.answer,
    this.elvesTotalCaloriesList,
  );
}

Solution calorieCounting() {
  final newLine = Platform.isWindows ? '\r\n' : '\n';
  var inputText = read_input_file.readFileData('day-1.txt');

  // convert the input text to a list of string
  // each string is the calories for a given elven food
  List<String> elvesCaloriesStringList = inputText.split(newLine + newLine);

  // convert the list of strings to a list of a list of integers
  // each list of integers is the calories for a given elven food
  List<List<int>> listOfElvesCaloriesIntList = elvesCaloriesStringList
      .map((e) => e.split(newLine).map((e) => int.parse(e)).toList())
      .toList();

  // calculate the total calories for each elven food
  List<int> elvesTotalCaloriesList = listOfElvesCaloriesIntList
      .map((e) => e.reduce((accum, current) => accum + current))
      .toList();

  // Sort the list of total calories in descending order
  elvesTotalCaloriesList.sort((a, b) => b.compareTo(a));

  // return the first highest total calorie and the list of total calories
  return Solution(elvesTotalCaloriesList[0], elvesTotalCaloriesList);
}
