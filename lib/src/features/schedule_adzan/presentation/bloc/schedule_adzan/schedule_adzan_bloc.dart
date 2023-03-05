// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:my_project/src/features/schedule_adzan/data/repository/schedule_adzan_repository.dart';
import 'package:my_project/src/features/schedule_adzan/domain/schedule_adzan.dart';

part 'schedule_adzan_event.dart';
part 'schedule_adzan_state.dart';

class ScheduleAdzanBloc
    extends HydratedBloc<ScheduleAdzanEvent, ScheduleAdzanState> {
  final ScheduleAdzanRepository repository;
  ScheduleAdzanBloc({
    required this.repository,
  }) : super(ScheduleAdzanInitial()) {
    on<GetScheduleEvent>((event, emit) async {
      emit(ScheduleAdzanLoading());
      final schedule = await ScheduleAdzanRepository.fetchScheduleAdzan(
        city: event.city,
      );
      emit(ScheduleAdzanLoaded(result: schedule));
    });
  }

  @override
  ScheduleAdzanState? fromJson(Map<String, dynamic> json) {
    final result = (json["schedule"] as List).map((e) {
      return ScheduleAdzan.fromJson(e as Map<String, dynamic>);
    }).toList();
    return ScheduleAdzanLoaded(result: result);
  }

  @override
  Map<String, dynamic>? toJson(ScheduleAdzanState state) {
    if (state is ScheduleAdzanLoaded) {
      return state.toJson();
    } else {
      return null;
    }
  }
}
