import 'package:moor_flutter/moor_flutter.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().withLength(min: 0, max: 45)();
  BoolColumn get isSync => boolean().withDefault(Constant(false))();
  BoolColumn get isCompleted => boolean().withDefault(Constant(false))();
  IntColumn get projectsId => integer()();
}
