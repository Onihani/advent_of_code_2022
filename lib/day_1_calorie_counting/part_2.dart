int calorieCounting(List<int> elvesTotalCaloriesList) {
  // Get a list of the first 3 highest total calories
  List<int> elvesTotalCaloriesListTop3 = elvesTotalCaloriesList.sublist(0, 3);

  // calculate the total calories for the first 3 highest total calories
  int elvesTotalCaloriesListTop3Total =
      elvesTotalCaloriesListTop3.reduce((accum, current) => accum + current);

  // return the sum of the first 3 highest total calories
  return elvesTotalCaloriesListTop3Total;
}
