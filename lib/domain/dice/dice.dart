import 'dart:math';

class Dice {
  /// Size of dice (d4, d6, d8, d10, d20)
  final int size;

  Dice(this.size) : assert(size > 1, 'Size of dice should be more than 1');

  /// Returns result from 1 to [size]
  int roll() => Random().nextInt(size - 1) + 1;
}
