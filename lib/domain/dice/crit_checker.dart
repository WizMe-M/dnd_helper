abstract interface class CritChecker {
  /// Returns whether [roll] is critical
  bool check(int roll);
}

/// Checker of critical rolls for Dice 20
class D20CritChecker implements CritChecker {
  static const critValues = [1, 20];

  @override
  bool check(int roll) => critValues.contains(roll);
}
