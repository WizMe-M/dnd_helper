import 'package:dnd_helper/data/model/dice/dice_roll.dart';
import 'package:dnd_helper/data/storage/dice_roll_repo.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class DiceRollHistory {
  final DiceRollRepo repo;

  DiceRollHistory(this.repo);

  Stream<List<DiceRoll>> get items => repo.saved;

  void save(int count, int size, int mod, int result) {
    var roll = DiceRoll(count, size, mod, result);
    repo.save(roll);
  }
}
