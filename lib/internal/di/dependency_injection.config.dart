// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dnd_helper/data/storage/dice_roll_repo.dart' as _i7;
import 'package:dnd_helper/domain/dice/crit_checker.dart' as _i3;
import 'package:dnd_helper/domain/dice/crit_handler.dart' as _i4;
import 'package:dnd_helper/domain/dice/dice_roll_history.dart' as _i8;
import 'package:dnd_helper/domain/dice/dice_roller.dart' as _i5;
import 'package:dnd_helper/internal/di/third_party_module.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyModule = _$ThirdPartyModule();
    gh.lazySingleton<_i3.CritChecker>(() => _i3.D20CritChecker());
    gh.singleton<_i4.CritHandler>(_i4.D20CritHandler(gh<_i3.CritChecker>()));
    gh.singleton<_i5.DiceRoller>(_i5.DiceRoller(gh<_i4.CritHandler>()));
    gh.singletonAsync<_i6.Isar>(() => thirdPartyModule.isar);
    gh.singletonAsync<_i7.DiceRollRepo>(
        () async => _i7.IsarDiceRollRepo(await getAsync<_i6.Isar>()));
    gh.singletonAsync<_i8.DiceRollHistory>(
        () async => _i8.DiceRollHistory(await getAsync<_i7.DiceRollRepo>()));
    return this;
  }
}

class _$ThirdPartyModule extends _i9.ThirdPartyModule {}
