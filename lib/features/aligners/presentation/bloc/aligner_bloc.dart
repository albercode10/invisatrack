import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'aligner_event.dart';
part 'aligner_state.dart';

class AlignerBloc extends Bloc<AlignerEvent, AlignerState> {
  AlignerBloc() : super(AlignerInitial()) {
    on<AlignerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
