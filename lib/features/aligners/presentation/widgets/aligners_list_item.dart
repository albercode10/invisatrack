import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:invisatrack/core/presentation/mixin/aligner_mixin.dart';
import 'package:invisatrack/core/presentation/widgets/list_item_subtitle.dart';
import 'package:invisatrack/features/aligners/domain/entities/aligner.dart';

class AlignersListItem extends StatelessWidget with AlignerMixin {
  final Aligner aligner;

  const AlignersListItem({Key? key, required this.aligner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days =
        getInitialDays(aligner.current, aligner.numberOfDays, aligner.start);
    return Card(
      elevation: 1,
      child: ListTile(
        leading: Container(
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: aligner.current
                  ? Theme.of(context).colorScheme.secondary
                  : Colors.transparent,
              width: 1.0,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: const Color(0x00000000),
            child: Text(aligner.number.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary)),
          ),
        ),
        title: Row(
          children: [
            SubTitle(
              subTitle: '${days.toString()}/${aligner.numberOfDays}',
              icon: days == aligner.numberOfDays
                  ? Icons.assignment_turned_in
                  : Icons.assignment,
            ),
          ],
        ),
        subtitle: Row(
          children: [
            SubTitle(
                subTitle: DateFormat.yMMMd(
                  'en',
                ).format(aligner.start),
                icon: Icons.event),
            SubTitle(
                subTitle: DateFormat.yMMMd(
                  'en',
                ).format(
                    aligner.start.add(Duration(days: (aligner.numberOfDays - 1)))),
                icon: Icons.event_available),
          ],
        ),
      ),
    );
  }
}
