part of 'aligner_bloc.dart';

sealed class AlignerEvent extends Equatable {
  const AlignerEvent();

  @override
  List<Object> get props => [];
}


final class AlignerGetAll extends AlignerEvent {
  const AlignerGetAll();
}
