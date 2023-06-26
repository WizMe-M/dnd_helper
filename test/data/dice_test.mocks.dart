// Mocks generated by Mockito 5.4.2 from annotations
// in dnd_helper/test/data/dice_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dnd_helper/domain/dice/crit_checker.dart' as _i4;
import 'package:dnd_helper/domain/dice/crit_handler.dart' as _i3;
import 'package:dnd_helper/domain/dice/dice.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [Dice].
///
/// See the documentation for Mockito's code generation for more information.
class MockDice extends _i1.Mock implements _i2.Dice {
  @override
  int get size => (super.noSuchMethod(
        Invocation.getter(#size),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  int roll() => (super.noSuchMethod(
        Invocation.method(
          #roll,
          [],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
}

/// A class which mocks [CritHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockCritHandler extends _i1.Mock implements _i3.CritHandler {
  @override
  int handleCrit(
    int? roll,
    int? mod,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #handleCrit,
          [
            roll,
            mod,
          ],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
}

/// A class which mocks [CritChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockCritChecker extends _i1.Mock implements _i4.CritChecker {
  @override
  bool check(int? roll) => (super.noSuchMethod(
        Invocation.method(
          #check,
          [roll],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}
