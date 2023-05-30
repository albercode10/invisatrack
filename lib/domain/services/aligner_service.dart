import 'package:invisatrack/data/local/repositories/aligner_local_repository.dart';
import 'package:invisatrack/domain/entities/aligner.dart';
import 'package:invisatrack/domain/repositories/aligner_repository.dart';

class AlignerService implements AlignerRepository {
  final AlignerLocalRepository alignerLocalRepository;

  AlignerService({required this.alignerLocalRepository});

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
