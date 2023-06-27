import 'dice_roll_history.dart';
import 'dice_roller.dart';
import 'dice.dart';
import 'enum_dice_variant.dart';

class DiceRollForm {
  final DiceRoller roller;
  final DiceRollHistory history;

  DiceRollForm(this.roller, this.history);

  void roll({
    int count = 1,
    DiceVariant diceVariant = DiceVariant.d6,
    int mod = 0,
  }) {
    var result = roller.rollDice(
      dice: Dice(diceVariant.size),
      times: count,
      mod: mod,
    );

    history.save(count, diceVariant.size, mod, result);
  }
}
