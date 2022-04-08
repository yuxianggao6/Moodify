import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class DBHelper {
  static Future<Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, '.db'),
        onCreate: (db, version) {
          return db.execute(
              'CREATE TABLE user_moods(datetime TEXT PRIMARY KEY, mood TEXT,sleep INT, water INT,nutrition INT, exercise INT,relaxation INT');
        }, version: 1);
  }
}