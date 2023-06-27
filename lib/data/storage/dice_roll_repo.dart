import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../model/dice/dice_roll.dart';

abstract class DiceRollRepo {
  Stream<List<DiceRoll>> get saved;

  void save(DiceRoll roll);
}

@Singleton(as: DiceRollRepo)
class IsarDiceRollRepo implements DiceRollRepo {
  final Isar isar;

  IsarDiceRollRepo(this.isar);

  @override
  Stream<List<DiceRoll>> get saved {
    return isar.diceRolls.where().watch(fireImmediately: true);
  }

  @override
  void save(DiceRoll roll) {
    isar.txn(() async {
      isar.diceRolls.put(roll);
    });
  }
}
