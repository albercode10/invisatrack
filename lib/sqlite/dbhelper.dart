import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static final DbHelper _dbHelper = DbHelper._internal();

  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  static Database? _db;

  Future<Database> get db async {
    _db = await initializeDb();
    return _db as Database;
  }

  Future<Database> initializeDb() async {
    return openDatabase(
        join(await getDatabasesPath(), 'invisatrack_database.db'),
        onCreate: _createDb,
        version: 1);
  }

  void _createDb(Database db, int newVersion) async {
    var futures = <Future>[];
    futures.addAll([createTableAligner(db, newVersion)]);
    await Future.wait(futures);
  }

  createTableAligner(db, version) {
    return db.execute(
      'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
    );
  }
}
