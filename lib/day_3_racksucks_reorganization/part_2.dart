import '../helpers/rucksacks_reorganization.dart' as rucksacks_reorganization;

int ruckSacksReorganization(List<String> rucksacksItemsStringList) {
  // convert the list of strings to a list of a chunks of strings of size 3
  // each chunk of strings is the items in a given rucksack
  List<List<String>> rucksacksItemsChunksList = rucksacks_reorganization
      .splitListToChunksOfGivenSize(rucksacksItemsStringList, 3);

  // convert the list of rucksacksItemsChunksList to a list of the common character code of the items
  List<int> listOfRucksacksCommonCharactersCodeList = rucksacksItemsChunksList
      .map((e) =>
          rucksacks_reorganization.findCommonCharactersCodeOfThreeStrings(e))
      .toList();

  // get the sum of the listOfRucksacksCommonCharactersCodeList list
  int answer = listOfRucksacksCommonCharactersCodeList
      .reduce((accum, current) => accum + current);

  return answer;
}
