// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'schedule_adzan_bloc.dart';

abstract class ScheduleAdzanState {}

class ScheduleAdzanInitial extends ScheduleAdzanState {}

class ScheduleAdzanLoading extends ScheduleAdzanState {}

class ScheduleAdzanLoaded extends ScheduleAdzanState {
  final List<ScheduleAdzan> result;
  ScheduleAdzanLoaded({
    required this.result,
  });

  ScheduleAdzanLoaded copyWith({
    List<ScheduleAdzan>? result,
  }) {
    return ScheduleAdzanLoaded(
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toJson() {
    return {'schedule': result};
  }
}
