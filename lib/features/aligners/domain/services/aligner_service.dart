import 'package:invisatrack/features/aligners/data/local/repositories/aligner_local_repository.dart';
import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';
import 'package:invisatrack/features/aligners/domain/repositories/aligner_repository.dart';

class AlignerService implements AlignerRepository {
  final AlignerLocalRepository alignerLocalRepository;

  AlignerService() : alignerLocalRepository = AlignerLocalRepository();

  @override
  Future<List<Aligner>> getAll() {
    return alignerLocalRepository.getAll();
  }

  @override
  Future<Aligner> getById(int id) async {
    return alignerLocalRepository.getById(id);
  }

  @override
  Future<int> insertAligner(Aligner aligner) async {
    return alignerLocalRepository.insertAligner(aligner);
  }

  @override
  Future<void> updateAligner(Aligner aligner) async {
    return alignerLocalRepository.updateAligner(aligner);
  }

  @override
  Future<void> deleteAligner(int id) async {
    return alignerLocalRepository.deleteAligner(id);
  }
}
