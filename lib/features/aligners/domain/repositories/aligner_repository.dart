import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';

abstract class AlignerRepository {
  Future<List<Aligner>> getAll();

  Future<Aligner> getById(int id);

  Future<int> insertAligner(Aligner aligner);

  Future<void> updateAligner(Aligner aligner);

  Future<void> deleteAligner(int id);
}
