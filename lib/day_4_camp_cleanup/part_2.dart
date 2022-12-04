import '../helpers/camp_cleanup.dart' as camp_cleanup;

int campCleanup(List<List<String>> listOfPairOfElvesSectionStringList) {
  // convert the list of pairOfElvesSectionStringList to a list of a list of intersecting items
  // each list of intersecting items is the items in a given string of pair of elves for a given section
  List<List<int>> listOfPairOfElvesSectionIntList =
      listOfPairOfElvesSectionStringList.map((e) {
    return camp_cleanup.getIntersectingItems(
        int.parse(e[0].split('-')[0]),
        int.parse(e[0].split('-')[1]),
        int.parse(e[1].split('-')[0]),
        int.parse(e[1].split('-')[1]));
  }).toList();

  // remove the empty list from the list of intersecting items
  List<List<int>> filteredListOfPairOfElvesSectionIntList =
      listOfPairOfElvesSectionIntList.where((e) => e.isNotEmpty).toList();

  return filteredListOfPairOfElvesSectionIntList.length;
}
