import 'package:equatable/equatable.dart';

class Aligner extends Equatable {
  final int id;
  final int number;
  final bool current;
  final int invisalingId;
  final int numberOfDays;
  final DateTime start;
  final String notes;


  const Aligner({
    required this.id,
    required this.number,
    required this.current,
    required this.invisalingId,
    required this.numberOfDays,
    required this.start,
    required this.notes,
  });

  @override
  List<Object?> get props => [id, number, current, invisalingId, numberOfDays, start, notes];
}

