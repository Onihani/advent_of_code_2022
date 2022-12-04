// for part 1
int calculateSingleGamePoints(String elveChoice, String myChoce) {
  // get value of elve and my choice
  var myChoiceValue = getChoiceValue(myChoce);
  var elveChoiceValue = getChoiceValue(elveChoice);

  // check if won, lost or tied
  late int matchResult;
  if (elveChoiceValue == myChoiceValue) {
    matchResult = 3;
  } else if (elveChoice == 'A' && myChoiceValue == 2) {
    // rock & paper
    matchResult = 6;
  } else if (elveChoice == 'A' && myChoiceValue == 3) {
    // rock & scissors
    matchResult = 0;
  } else if (elveChoice == 'B' && myChoiceValue == 1) {
    // paper & rock
    matchResult = 0;
  } else if (elveChoice == 'B' && myChoiceValue == 3) {
    // paper & scissors
    matchResult = 6;
  } else if (elveChoice == 'C' && myChoiceValue == 1) {
    // scissors & rock
    matchResult = 6;
  } else if (elveChoice == 'C' && myChoiceValue == 2) {
    // scissors & paper
    matchResult = 0;
  } else {
    matchResult = 0;
  }

  return matchResult + myChoiceValue;
}

// for part 2
int calculateSingleGameResult(String elveChoice, String gameResult) {
  // get value of elve choice
  var elveChoiceValue = getChoiceValue(elveChoice);

  // get value of game result
  var gameResultValue = getGameResultValue(gameResult);

  // determine the choice to pick based on the game result
  late String choiceToPick;
  if (gameResultValue == 3) {
    // tied
    choiceToPick = elveChoice;
  } else if (gameResultValue == 6) {
    // won
    if (elveChoice == 'A') {
      choiceToPick = 'B';
    } else if (elveChoice == 'B') {
      choiceToPick = 'C';
    } else if (elveChoice == 'C') {
      choiceToPick = 'A';
    }
  } else if (gameResultValue == 0) {
    // lost
    if (elveChoice == 'A') {
      choiceToPick = 'C';
    } else if (elveChoice == 'B') {
      choiceToPick = 'A';
    } else if (elveChoice == 'C') {
      choiceToPick = 'B';
    }
  }

  // get choice to pick value
  var choiceToPickValue = getChoiceValue(choiceToPick);

  // return the sum of the game result value and the choice to pick value
  return gameResultValue + choiceToPickValue;
}

int getChoiceValue(String choice) {
  switch (choice) {
    case 'X':
      return 1;
    case 'Y':
      return 2;
    case 'Z':
      return 3;
    case 'A':
      return 1;
    case 'B':
      return 2;
    case 'C':
      return 3;
    default:
      return 0;
  }
}

int getGameResultValue(String gameResult) {
  switch (gameResult) {
    case 'X':
      return 0;
    case 'Y':
      return 3;
    case 'Z':
      return 6;
    default:
      return 0;
  }
}
