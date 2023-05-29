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
  String? notes;
}
