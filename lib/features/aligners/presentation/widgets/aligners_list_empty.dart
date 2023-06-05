import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AlignersListEmpty extends StatelessWidget {
  const AlignersListEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: AutoSizeText(
              'EmptyDescription',
              style: TextStyle(
                fontSize: 16.0,
              ),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
