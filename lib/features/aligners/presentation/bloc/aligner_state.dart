part of 'aligner_bloc.dart';

enum AlignerStatus { initial, loading, success, failure }

final class AlignersState extends Equatable {
  const AlignersState({
    this.status = AlignerStatus.initial,
    this.aligners = const <Aligner>[],
  });

  final AlignerStatus status;
  final List<Aligner> aligners;

  @override
  List<Object> get props => [status, aligners];

  AlignersState copyWith({
    AlignerStatus? status,
    List<Aligner>? aligners,
  }) {
    return AlignersState(
      status: status ?? this.status,
      aligners: aligners ?? this.aligners,
    );
  }
}
