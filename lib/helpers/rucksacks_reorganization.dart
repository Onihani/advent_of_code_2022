// function to split a string to 2 equal parts
List<String> splitStringTo2EqualParts(String inputString) {
  // get the length of the input string
  int inputStringLength = inputString.length;

  // get the half of the length of the input string
  int halfOfInputStringLength = inputStringLength ~/ 2;

  // get the first half of the input string
  String firstHalfOfInputString =
      inputString.substring(0, halfOfInputStringLength);

  // get the second half of the input string
  String secondHalfOfInputString =
      inputString.substring(halfOfInputStringLength, inputStringLength);

  // return a list of the first half and the second half of the input string
  return [firstHalfOfInputString, secondHalfOfInputString];
}

// function to find the character that occurs in both strings
int findCommonCharactersCodeOfTwoStrings(String str1, String str2) {
  // initialize the common character variable
  late String commonCharacter;

  // loop through the shortest string
  for (int i = 0; i < str1.length; i++) {
    // get the character at the current index of the first string
    String str1Character = str1[i];

    // check if the character at the current index of the first string
    // is contained in the second string
    if (str2.contains(str1Character)) {
      // add the character to the common character
      commonCharacter = str1Character;
      break;
    }
  }

  // find the character code of the common character
  int commonCharacterCode = calculateCustomCharacterCode(commonCharacter);

  // return the common characters code
  return commonCharacterCode;
}

int calculateCustomCharacterCode(String str) {
  if (str.codeUnitAt(0) > 96) {
    return str.codeUnitAt(0) - 96;
  } else {
    return str.codeUnitAt(0) - 38;
  }
}

// function to split a list of strings to chunks of given size
List<List<String>> splitListToChunksOfGivenSize(
    List<String> inputList, int chunkSize) {
  // initialize the list of chunks
  List<List<String>> listOfChunks = [];

  // loop through the input list
  for (int i = 0; i < inputList.length; i += chunkSize) {
    // get the chunk of the input list
    List<String> chunk = inputList.sublist(i, i + chunkSize);

    // add the chunk to the list of chunks
    listOfChunks.add(chunk);
  }

  // return the list of chunks
  return listOfChunks;
}

// function to find the character that occurs in three strings
int findCommonCharactersCodeOfThreeStrings(List<String> strList) {
  // initialize the common character variable
  late String commonCharacter;

  // find the the shortest string length and its index
  List<int> shortestStringLengthAndIndex =
      findShortestStringLengthAndIndex(strList);
  int shortestStringLength = shortestStringLengthAndIndex.first;
  int shortestStringIndex = shortestStringLengthAndIndex.last;

  // get the shortest string
  String shortestString = strList[shortestStringIndex];

  // get the other two strings
  List<String> otherTwoStrings =
      strList.where((element) => element != shortestString).toList();
  String str1 = otherTwoStrings[0];
  String str2 = otherTwoStrings[1];

  // loop through the shortest string
  for (int i = 0; i < shortestStringLength; i++) {
    // get the character at the current index of the shortest string
    String shortestStringCharacter = shortestString[i];

    // check if the character at the current index of the shortest string
    // is contained in the other two strings
    if (str1.contains(shortestStringCharacter) &&
        str2.contains(shortestStringCharacter)) {
      // add the character to the common character
      commonCharacter = shortestStringCharacter;
      break;
    }
  }

  // find the character code of the common character
  int commonCharacterCode = calculateCustomCharacterCode(commonCharacter);

  // return the common characters code
  return commonCharacterCode;
}

// function to find the shortest string length and index in a list of strings
List<int> findShortestStringLengthAndIndex(List<String> inputList) {
  // initialize the shortest string length and index
  int shortestStringLength = inputList[0].length;
  int shortestStringIndex = 0;

  // loop through the input list
  for (int i = 0; i < inputList.length; i++) {
    // get the current string length
    int currentStringLength = inputList[i].length;

    // check if the current string length is less than the shortest string length
    if (currentStringLength < shortestStringLength) {
      // update the shortest string length and index
      shortestStringLength = currentStringLength;
      shortestStringIndex = i;
    }
  }

  // return the shortest string length and index
  return [shortestStringLength, shortestStringIndex];
}
