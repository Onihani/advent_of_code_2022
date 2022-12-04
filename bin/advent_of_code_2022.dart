import 'package:advent_of_code_2022/day_1_calorie_counting/part_1.dart'
    as day_1_calorie_counting_part_1;
import 'package:advent_of_code_2022/day_1_calorie_counting/part_2.dart'
    as day_1_calorie_counting_part_2;

void main(List<String> arguments) {
  print('Advent Of Code 2022!');

  /* ======== Day 1: Calorie Counting ======= */
  // Part 1
  var part1Solution = day_1_calorie_counting_part_1.calorieCounting();
  print('Day 1: Part 1 - Solution = ${part1Solution.answer}');

  // Part 2
  var part2Solution = day_1_calorie_counting_part_2
      .calorieCounting(part1Solution.elvesTotalCaloriesList);
  print('Day 1: Part 2 - Solution = $part2Solution');
}
