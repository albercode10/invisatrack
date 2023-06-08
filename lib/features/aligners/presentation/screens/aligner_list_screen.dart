import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invisatrack/features/aligners/presentation/bloc/aligner_bloc.dart';
import 'package:invisatrack/features/aligners/presentation/widgets/list/aligner_list.dart';

class AlignerListScreen extends StatefulWidget {
  const AlignerListScreen({Key? key}) : super(key: key);

  @override
  State<AlignerListScreen> createState() => _AlignerListScreenState();
}

class _AlignerListScreenState extends State<AlignerListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AlignerBloc>().add(const AlignerGetAll());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: BlocProvider.of<AlignerBloc>(context),
        child: Scaffold(
          appBar: AppBar(title: const Text('List')),
          body: const AlignerList(),
          floatingActionButton: FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.go('/aligners/add');
            },
            child: const Icon(Icons.add),
          ),
        ));
  }
}
