import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'model/dice/dice_roll.dart';

Future<Isar> openIsarDatabase() async {
  final appDocuments = await getApplicationDocumentsDirectory();
  var path = join(appDocuments.path, 'local_db');
  await Directory(path).create(recursive: true);
  return Isar.open(
    [
      DiceRollSchema
    ],
    directory: path,
  );
}