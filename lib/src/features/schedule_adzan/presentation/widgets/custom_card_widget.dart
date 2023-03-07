import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_project/src/features/schedule_adzan/presentation/widgets/schedule_card_widget.dart';

import '../../../../config/config.dart';
import '../../domain/schedule_adzan.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.result,
  }) : super(key: key);

  final List<ScheduleAdzan> result;

  @override
  Widget build(BuildContext context) {
    final schedule = result.firstWhere((element) {
      final day = DateTime.now().day;
      final month = DateTime.now().month;
      final year = DateTime.now().year;
      return element.tanggal == DateTime(year, month, day);
    });

    final date = DateFormat.yMMMMEEEEd("id").format(schedule.tanggal);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppSize.s20),
          child: Text(
            date,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontManager.semiBold,
                ),
          ),
        ),
        heightBox10(),
        ScheduleCardWidget(
          text: "Imsyak",
          date: schedule.imsyak,
        ),
        ScheduleCardWidget(
          text: "Shubuh",
          date: schedule.shubuh,
        ),
        ScheduleCardWidget(
          text: "Dzuhur",
          date: schedule.dzuhur,
        ),
        ScheduleCardWidget(
          text: "Ashar",
          date: schedule.ashr,
        ),
        ScheduleCardWidget(
          text: "Magrib",
          date: schedule.magrib,
        ),
        ScheduleCardWidget(
          text: "Isya'",
          date: schedule.isya,
        ),
      ],
    );
  }
}
