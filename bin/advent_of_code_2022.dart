// day 1
import 'package:advent_of_code_2022/day_1_calorie_counting/part_1.dart'
    as day_1_calorie_counting_part_1;
import 'package:advent_of_code_2022/day_1_calorie_counting/part_2.dart'
    as day_1_calorie_counting_part_2;

// day 2
import 'package:advent_of_code_2022/day_2_rock_paper_scissors/part_1.dart'
    as day_2_rock_paper_scissors_part_1;
import 'package:advent_of_code_2022/day_2_rock_paper_scissors/part_2.dart'
    as day_2_rock_paper_scissors_part_2;

// day 3
import 'package:advent_of_code_2022/day_3_racksucks_reorganization/part_1.dart'
    as day_3_racksucks_reorganization_part_1;
import 'package:advent_of_code_2022/day_3_racksucks_reorganization/part_2.dart'
    as day_3_racksucks_reorganization_part_2;

// day 4
import 'package:advent_of_code_2022/day_4_camp_cleanup/part_1.dart'
    as day_4_camp_cleanup_part_1;
import 'package:advent_of_code_2022/day_4_camp_cleanup/part_2.dart'
    as day_4_camp_cleanup_part_2;

void main(List<String> arguments) {
  print('Advent Of Code 2022!');

  /* ======== Day 1: Calorie Counting ======= */
  // Part 1
  var day1Part1Solution = day_1_calorie_counting_part_1.calorieCounting();
  print('Day 1: Part 1 - Solution = ${day1Part1Solution.answer}');

  // Part 2
  var day1Part2Solution = day_1_calorie_counting_part_2
      .calorieCounting(day1Part1Solution.elvesTotalCaloriesList);
  print('Day 1: Part 2 - Solution = $day1Part2Solution');

  /* ======== Day 2: Rock Paper Scissors ======= */
  // Part 1
  var day2Part1Solution = day_2_rock_paper_scissors_part_1.rockPaperScissors();
  print('Day 2: Part 1 - Solution = $day2Part1Solution');

  // Part 2
  var day2Part2Solution = day_2_rock_paper_scissors_part_2.rockPaperScissors();
  print('Day 2: Part 2 - Solution = $day2Part2Solution');

  /* ======== Day 3: RuckSacks Reorganization ======= */
  // Part 1
  var day3Part1Solution =
      day_3_racksucks_reorganization_part_1.ruckSacksReorganization();
  print('Day 3: Part 1 - Solution = ${day3Part1Solution.answer}');

  // Part 2
  var day3Part2Solution = day_3_racksucks_reorganization_part_2
      .ruckSacksReorganization(day3Part1Solution.rucksacksItemsStringList);
  print('Day 3: Part 2 - Solution = $day3Part2Solution');

  /* ======== Day 4: Camp Cleanup ======= */
  // Part 1
  var day4Part1Solution = day_4_camp_cleanup_part_1.campCleanup();
  print('Day 4: Part 1 - Solution = ${day4Part1Solution.answer}');
  // Part 2
  var day4Part2Solution = day_4_camp_cleanup_part_2
      .campCleanup(day4Part1Solution.listOfPairOfElvesSectionStringList);
  print('Day 4: Part 2 - Solution = $day4Part2Solution');
}
