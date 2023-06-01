part of 'aligner_bloc.dart';

sealed class AlignerState extends Equatable {
  const AlignerState();
}

final class AlignerInitial extends AlignerState {
  @override
  List<Object> get props => [];
}
