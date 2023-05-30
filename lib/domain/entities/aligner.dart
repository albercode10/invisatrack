import 'package:equatable/equatable.dart';

class Aligner extends Equatable {
   final int? id;
   final int? number;
   final bool? current;
   final int? invisalingId;
   final int? numberOfDays;
   final DateTime? start;
   final List<String>? notes;

  const Aligner({
    this.id,
    this.number,
    this.current,
    this.invisalingId,
    this.numberOfDays,
    this.start,
    this.notes,
  });

  @override
  List<Object?> get props =>
      [id, number, current, invisalingId, numberOfDays, start, notes];
}
