import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invisatrack/features/aligners/domain/services/aligner_service.dart';
import 'package:invisatrack/features/aligners/presentation/bloc/aligner_bloc.dart';
import 'package:invisatrack/features/aligners/presentation/widgets/aligners_list.dart';

class AlignersScreen extends StatelessWidget {

  const AlignersScreen({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlignerBloc(
        alignerService: AlignerService(),
      )..add(const AlignerGetAll()),
      child: const AlignersList(),
    );
  }
}
