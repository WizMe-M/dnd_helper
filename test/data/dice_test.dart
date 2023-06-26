import 'package:dnd_helper/domain/dice/crit_checker.dart';
import 'package:dnd_helper/domain/dice/crit_handler.dart';
import 'package:dnd_helper/domain/dice/dice.dart';
import 'package:dnd_helper/domain/dice/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shouldly/shouldly.dart';

@GenerateNiceMocks([
  MockSpec<Dice>(),
  MockSpec<CritHandler>(),
  MockSpec<CritChecker>(),
])
import 'dice_test.mocks.dart';

void main() {
  group('Single dice rolls', () {
    test('Roll D10', () async {
      var dice = Dice(10);
      var roll = dice.roll();
      roll.should.beWithin(1, dice.size);
    });

    test('Roll D6', () async {
      var dice = Dice(6);
      var roll = dice.roll();
      roll.should.beWithin(1, dice.size);
    });
  });

  group('Mock', () {
    group('D20 critical results handler', () {
      var checker = MockCritChecker();
      CritHandler handler = D20CritHandler(checker);

      test('Get crit value', () async {
        const roll = 20;
        const mod = 5;

        when(checker.check(roll)).thenReturn(true);
        var result = handler.handleCrit(roll, mod);
        result.should.be(roll);
      });

      test('Get usual roll', () async {
        const roll = 19;
        const mod = 6;

        when(checker.check(roll)).thenReturn(false);
        var result = handler.handleCrit(roll, mod);
        result.should.be(roll + mod);
      });
    });

    group('D20 dice rolling', () {
      var dice = MockDice();
      var handler = MockCritHandler();
      var diceRoller = DiceRoller(handler);

      test('Roll dice with crit', () async {
        const roll = 20;
        const mod = 5;
        when(dice.roll()).thenReturn(roll);
        when(handler.handleCrit(roll, mod)).thenReturn(roll);
        var result = diceRoller.rollDiceWithCrit(dice: dice, mod: 5);
        result.should.be(roll);
      });

      test('Roll dice without crit', () async {
        const roll = 20;
        const mod = 5;
        const correctResult = roll + mod;
        when(dice.roll()).thenReturn(roll);
        when(handler.handleCrit(roll, mod)).thenReturn(correctResult);
        var result = diceRoller.rollDiceWithCrit(dice: dice, mod: 5);
        result.should.be(correctResult);
      });
    });

    group('Group dice rolling', () {
      var dice = MockDice();
      var handler = MockCritHandler();
      var roller = DiceRoller(handler);

      test('Only one roll without mod', () {
        const correctRoll = 5;
        when(dice.roll()).thenReturn(5);
        var roll = roller.rollDice(dice: dice);
        roll.should.be(correctRoll);
      });

      test('Only one roll with mod', () {
        const correctRoll = 5 + 4;
        when(dice.roll()).thenReturn(5);
        var roll = roller.rollDice(dice: dice, mod: 4);
        roll.should.be(correctRoll);
      });

      test('Two rolls without mod', () {
        const correctRoll = 2 * 5;
        when(dice.roll()).thenReturn(5);
        var roll = roller.rollDice(times: 2, dice: dice);
        roll.should.be(correctRoll);
      });

      test('Two rolls with mod', () {
        const correctRoll = 2 * 5 + 4;
        when(dice.roll()).thenReturn(5);
        var roll = roller.rollDice(times: 2, dice: dice, mod: 4);
        roll.should.be(correctRoll);
      });
    });
  });

  debugPrint('Dice tests are finished');
}
