import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';
import 'package:invisatrack/features/aligners/presentation/bloc/aligner_bloc.dart';
import 'package:invisatrack/features/aligners/presentation/widgets/aligners_list_empty.dart';
import 'package:invisatrack/features/aligners/presentation/widgets/aligners_list_item.dart';

class AlignersList extends StatelessWidget {
  const AlignersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AlignerBloc>().state;
    final List<Aligner> aligners = state.aligners;
    if (state.status == AlignerStatus.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return aligners.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: aligners.length,
            itemBuilder: (BuildContext context, int index) {
              return AlignersListItem(aligners: aligners[index]);
            },
          )
        : const AlignersListEmpty();
  }
}
