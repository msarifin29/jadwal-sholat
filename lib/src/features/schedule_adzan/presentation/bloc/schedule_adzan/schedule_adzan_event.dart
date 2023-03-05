// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'schedule_adzan_bloc.dart';

abstract class ScheduleAdzanEvent {}

class GetScheduleEvent extends ScheduleAdzanEvent {
  final String city;
  GetScheduleEvent({
    required this.city,
  });
}
