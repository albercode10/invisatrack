import 'package:invisatrack/domain/entities/aligner.dart';
import 'package:isar/isar.dart';

part 'aligner_model.g.dart';

@collection
@Name('Aligner')
class AlignerModel {
  Id id = Isar.autoIncrement;
  int? number;
  bool? current;
  int? invisalingId;
  int? numberOfDays;
  DateTime? start;
  List<String>? notes;

  Aligner toAligner() => Aligner(
      id: id,
      number: number,
      current: current,
      invisalingId: invisalingId,
      numberOfDays: numberOfDays,
      start: start,
      notes: notes
  );

}
