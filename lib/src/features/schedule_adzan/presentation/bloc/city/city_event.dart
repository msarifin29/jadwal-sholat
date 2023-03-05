// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'city_bloc.dart';

abstract class CityEvent {}

class CityAdzanEvent extends CityEvent {
  final String cityName;
  CityAdzanEvent({
    required this.cityName,
  });
}
