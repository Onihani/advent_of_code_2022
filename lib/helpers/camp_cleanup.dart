String convertSinglePairStringToExpnded(String pairStr) {
  List<int> pairIntList = pairStr.split('-').map((s) => int.parse(s)).toList();

  int start = pairIntList[0];
  int end = pairIntList[1];

  List<int> generatedListWithStartAndEnd =
      List<int>.generate(end - start + 1, (i) => start + i);

  return generatedListWithStartAndEnd.join('');
}

// function to check if a two given strings are substrings of each other
checkIfTwoStringsAreSubstrings(String str1, String str2) {
  if (str1.length > str2.length) {
    return str1.contains(str2);
  } else {
    return str2.contains(str1);
  }
}

// function to check if a range of a list of two given integers subset of each other
checkIfTwoIntegersAreSubsets(int start1, int end1, int start2, int end2) {
  if (start1 >= start2 && end1 <= end2) {
    return true;
  } else if (start2 >= start1 && end2 <= end1) {
    return true;
  } else {
    return false;
  }
}

// function to return the items that are available in both sections a range of a list of two given integers
List<int> getIntersectingItems(int start1, int end1, int start2, int end2) {
  List<int> list1 = List<int>.generate(end1 - start1 + 1, (i) => start1 + i);
  List<int> list2 = List<int>.generate(end2 - start2 + 1, (i) => start2 + i);

  List<int> intersectingItems = list1.where((e) => list2.contains(e)).toList();

  return intersectingItems;
}
