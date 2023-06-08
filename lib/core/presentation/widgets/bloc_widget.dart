import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invisatrack/features/aligners/domain/services/aligner_service.dart';
import 'package:invisatrack/features/aligners/presentation/bloc/aligner_bloc.dart';

class BlocWidget extends StatelessWidget {
  final Widget child;

  const BlocWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AlignerBloc>(
          lazy: false,
          create: (BuildContext context) =>
              AlignerBloc(alignerService: AlignerService()),
        ),
      ],
      child: child,
    );
  }
}
