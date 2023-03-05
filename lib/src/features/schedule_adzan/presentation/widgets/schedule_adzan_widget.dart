// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_project/src/config/theme_manager/app_color.dart';

import 'package:my_project/src/config/theme_manager/app_size.dart';
import 'package:my_project/src/features/schedule_adzan/domain/schedule_adzan.dart';

import '../bloc/schedule_adzan/schedule_adzan_bloc.dart';

class ScheduleAdzanWidget extends StatelessWidget {
  const ScheduleAdzanWidget({
    Key? key,
    required this.city,
  }) : super(key: key);
  final String city;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleAdzanBloc, ScheduleAdzanState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ScheduleAdzanLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ScheduleAdzanLoaded) {
          return CustomCard(
            result: state.result,
          );
        }
        return const Text("Pilih kota terlebih dahulu");
      },
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.result,
  }) : super(key: key);

  final List<ScheduleAdzan> result;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: result.map((e) {
              final date = DateFormat.yMd("id").format(e.tanggal);
              return ScheduleCardWidget(
                color: Colors.grey.shade300,
                text: date,
              );
            }).toList(),
          ),
          Row(
            children: result.map((e) {
              return ScheduleCardWidget(text: "Imsyak", date: e.imsyak);
            }).toList(),
          ),
          Row(
            children: result.map((e) {
              return ScheduleCardWidget(text: "Shubuh", date: e.shubuh);
            }).toList(),
          ),
          Row(
            children: result.map((e) {
              return ScheduleCardWidget(text: "Dzuhur", date: e.dzuhur);
            }).toList(),
          ),
          Row(
            children: result.map((e) {
              return ScheduleCardWidget(text: "Ashar", date: e.ashr);
            }).toList(),
          ),
          Row(
            children: result.map((e) {
              return ScheduleCardWidget(text: "Maghrib", date: e.magrib);
            }).toList(),
          ),
          Row(
            children: result.map((e) {
              return ScheduleCardWidget(
                text: "Isya'",
                date: e.isya,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

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
        width: 90.0,
        padding: const EdgeInsets.all(AppSize.s6),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(text, style: Theme.of(context).textTheme.bodyMedium!),
            if (date != null)
              Text(
                date!,
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
          ],
        ),
      ),
    );
  }
}
