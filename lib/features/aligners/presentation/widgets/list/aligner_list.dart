import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';
import 'package:invisatrack/features/aligners/presentation/bloc/aligner_bloc.dart';
import 'package:invisatrack/features/aligners/presentation/widgets/list/aligner_list_empty.dart';
import 'package:invisatrack/features/aligners/presentation/widgets/list/aligner_list_item.dart';


class AlignerList extends StatelessWidget {
  const AlignerList({Key? key}) : super(key: key);

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
              return AlignerListItem(aligner: aligners[index]);
            },
          )
        : const AlignerListEmpty();
  }
}
