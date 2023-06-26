import 'dart:math';

import 'crit_handler.dart';
import 'dice.dart';

enum RollParam { once, disadvantage, advantage }

class DiceRoller {
  final CritHandler critHandler;

  DiceRoller(this.critHandler);

  /// Rolls a dice in formula '[times] * dX + [mod]'
  int rollDice({
    required Dice dice,
    int times = 1,
    int mod = 0,
  }) {
    var sum = 0;
    for (int i = 0; i < times; i++) {
      sum += dice.roll();
    }

    sum += mod;
    return sum;
  }

  /// Rolls dice with mod and param. Considers critical results
  int rollDiceWithCrit({
    required Dice dice,
    int mod = 0,
    RollParam param = RollParam.once,
  }) {
    var roll = rollDiceWithParam(dice: dice, param: param);
    return critHandler.handleCrit(roll, mod);
  }

  /// Rolls dice with param and returns roll result
  int rollDiceWithParam({
    required Dice dice,
    RollParam param = RollParam.once,
  }) {
    switch (param) {
      case RollParam.once:
        return dice.roll();
      case RollParam.advantage:
        var firstRoll = dice.roll();
        var secondRoll = dice.roll();
        return max(firstRoll, secondRoll);
      case RollParam.disadvantage:
        var firstRoll = dice.roll();
        var secondRoll = dice.roll();
        return min(firstRoll, secondRoll);
    }
  }
}
