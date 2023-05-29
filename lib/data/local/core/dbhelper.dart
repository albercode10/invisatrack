import 'package:invisatrack/data/local/models/aligner_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper {
  static final DbHelper _dbHelper = DbHelper._internal();

  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [AlignerModelSchema],
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
