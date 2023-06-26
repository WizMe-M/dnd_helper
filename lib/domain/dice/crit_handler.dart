import 'crit_checker.dart';

abstract interface class CritHandler {
  /// Returns correct value for critical roll with mod
  int handleCrit(int roll, int mod);
}

/// Handler of critical rolls for Dice 20
class D20CritHandler implements CritHandler {
  final CritChecker critChecker;

  D20CritHandler(this.critChecker);

  @override
  int handleCrit(int roll, int mod) {
    return critChecker.check(roll) ? roll : roll + mod;
  }
}
