import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invisatrack/features/aligners/presentation/bloc/aligner_bloc.dart';
import 'package:invisatrack/features/aligners/presentation/widgets/form/aligner_form.dart';

class AlignerAddScreen extends StatelessWidget {
  const AlignerAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AlignerBloc>().state;
    return BlocProvider.value(
      value: BlocProvider.of<AlignerBloc>(context),
      child: const AlignerForm()
    );
  }
}
