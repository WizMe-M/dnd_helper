enum DiceVariant {
  d4(4),
  d6(6),
  d8(8),
  d10(10),
  d12(12),
  d20(20);

  final int size;

  const DiceVariant(this.size);
}
