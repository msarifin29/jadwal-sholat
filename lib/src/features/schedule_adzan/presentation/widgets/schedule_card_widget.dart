import 'package:flutter/material.dart';
import '../../../../config/config.dart';

class ScheduleCardWidget extends StatelessWidget {
  const ScheduleCardWidget({
    super.key,
    required this.text,
    this.color = AppColor.white,
    this.date,
  });

  final String text;
  final Color color;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.s8,
        vertical: AppSize.s4,
      ),
      color: color,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSize.s10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 70.0,
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColor.primary,
                      fontSize: AppSize.s18,
                    ),
              ),
            ),
            Text(date!, style: Theme.of(context).textTheme.bodyLarge!),
            const Icon(Icons.alarm_on_outlined)
          ],
        ),
      ),
    );
  }
}
