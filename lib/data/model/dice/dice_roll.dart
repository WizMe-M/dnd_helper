import 'package:isar/isar.dart';

part 'dice_roll.g.dart';

/// An element of history of Dice Rolls
@collection
@Name('dice_roll_history')
class DiceRoll {
  Id? id;

  late int count;
  late int size;
  late int mod;
  late int result;

  DiceRoll(this.count, this.size, this.mod, this.result);
}
