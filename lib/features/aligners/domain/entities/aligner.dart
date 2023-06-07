import 'package:equatable/equatable.dart';

class Aligner extends Equatable {
   final int? id;
   final int number;
   final bool current;
   final int numberOfDays;
   final DateTime start;
   final int? invisalingId;
   final List<String>? notes;

  const Aligner({
    this.id,
    required this.number,
    required this.current,
    required this.numberOfDays,
    required this.start,
    this.invisalingId,
    this.notes,
  });

  @override
  List<Object?> get props =>
      [id, number, current, invisalingId, numberOfDays, start, notes];
}
