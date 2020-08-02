import 'package:moor_flutter/moor_flutter.dart';

class Projects extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 0, max: 45)();
  BoolColumn get isSync => boolean().withDefault(Constant(false))();
}
