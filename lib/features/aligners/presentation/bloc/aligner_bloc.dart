import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';
import 'package:invisatrack/features/aligners/domain/services/aligner_service.dart';

part 'aligner_event.dart';
part 'aligner_state.dart';

class AlignerBloc extends Bloc<AlignerEvent, AlignersState> {
  final AlignerService _alignerService;

  AlignerBloc({required AlignerService alignerService})
      : _alignerService = alignerService,
        super(const AlignersState()) {
    on<AlignerGetAll>(_onAlignerGetAll);
  }

  Future<void> _onAlignerGetAll(
    AlignerGetAll event,
    Emitter<AlignersState> emit,
  ) async {
    emit(state.copyWith(status: AlignerStatus.loading));
    try {
      List<Aligner> aligners = await _alignerService.getAll();
      emit(state.copyWith(
        status: AlignerStatus.success,
        aligners: aligners,
      ));
    } catch (err) {
      state.copyWith(status: AlignerStatus.failure);
    }
  }
}
