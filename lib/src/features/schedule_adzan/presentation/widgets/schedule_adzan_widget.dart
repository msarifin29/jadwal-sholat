import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/features/schedule_adzan/presentation/widgets/custom_card_widget.dart';
import '../bloc/schedule_adzan/schedule_adzan_bloc.dart';

class ScheduleAdzanWidget extends StatelessWidget {
  const ScheduleAdzanWidget({
    Key? key,
    required this.citySelected,
  }) : super(key: key);

  final String citySelected;

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
          return CustomCardWidget(
            result: state.result,
          );
        }
        return const Text("Pilih kota terlebih dahulu");
      },
    );
  }
}
