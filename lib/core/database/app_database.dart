import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

class Bookmarks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get surahNumber => integer()();
  IntColumn get ayahNumber => integer()();
  TextColumn get surahName => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class TasbihSessions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get dhikrTitle => text()();
  IntColumn get count => integer()();
  DateTimeColumn get date => dateTime().withDefault(currentDateAndTime)();
}

@DriftDatabase(tables: [Bookmarks, TasbihSessions])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'ayat_app.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
