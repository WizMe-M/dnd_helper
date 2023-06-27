import 'package:dnd_helper/data/database.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@module
abstract class ThirdPartyModule {
  @singleton
  Future<Isar> get isar => openIsarDatabase();
}
