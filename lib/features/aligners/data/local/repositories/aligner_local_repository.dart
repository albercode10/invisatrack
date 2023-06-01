
import 'package:invisatrack/core/data/local/dbhelper.dart';
import 'package:invisatrack/features/aligners/data/local/models/aligner_model.dart';
import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';
import 'package:invisatrack/features/aligners/domain/repositories/aligner_repository.dart';
import 'package:isar/isar.dart';

class AlignerLocalRepository with DbHelper implements AlignerRepository {
  late Future<Isar> db;

  AlignerLocalRepository() {
    db = openDB();
  }

  @override
  Future<List<Aligner>> getAll() async {
    final isar = await db;
    final alignerModels = await isar.alignerModels.where().sortByNumber().findAll();
    return alignerModels
        .map((alignerModel) => alignerModel.toAligner())
        .toList();
  }

  @override
  Future<Aligner> getById(int id) async {
    final isar = await db;
    final alignerModel = await isar.alignerModels.get(id);
    if (alignerModel != null) {
      return alignerModel.toAligner();
    }
    return Future.error('Error Aligner: $alignerModel');
  }

  @override
  Future<int> insertAligner(Aligner aligner) async {
    final isar = await db;
    final alignerModel = AlignerModel()
      ..number = aligner.number
      ..current = aligner.current
      ..invisalingId = aligner.invisalingId
      ..numberOfDays = aligner.numberOfDays
      ..start = aligner.start
      ..notes = aligner.notes;

    await isar.writeTxn(() async {
      await isar.alignerModels.put(alignerModel);
    });
    return alignerModel.id;
  }

  @override
  Future<void> updateAligner(Aligner aligner) async {
    final isar = await db;
    final alignerModel = AlignerModel()
      ..id = aligner.id!
      ..number = aligner.number
      ..current = aligner.current
      ..invisalingId = aligner.invisalingId
      ..numberOfDays = aligner.numberOfDays
      ..start = aligner.start
      ..notes = aligner.notes;

    await isar.writeTxn(() async {
      await isar.alignerModels.put(alignerModel);
    });
  }

  @override
  Future<void> deleteAligner(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.alignerModels.delete(id);
    });
  }
}
