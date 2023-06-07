import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';
import 'package:isar/isar.dart';

part 'aligner_model.g.dart';

@collection
@Name('Aligner')
class AlignerModel {
  Id id = Isar.autoIncrement;
  late int number;
  late bool current;
  late int numberOfDays;
  late DateTime start;
  int? invisalingId;
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
