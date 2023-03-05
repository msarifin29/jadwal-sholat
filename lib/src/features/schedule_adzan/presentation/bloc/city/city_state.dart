// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'city_bloc.dart';

abstract class CityAdzanState {}

class CityAdzanInitial extends CityAdzanState {}

class CityAdzanLoading extends CityAdzanState {}

class CityAdzanLoaded extends CityAdzanState {
  final List<String> city;
  final String cityName;
  CityAdzanLoaded({
    required this.city,
    required this.cityName,
  });

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      "cityName": cityName,
    };
  }

  CityAdzanLoaded copyWith({
    List<String>? city,
    String? cityName,
  }) {
    return CityAdzanLoaded(
      city: city ?? this.city,
      cityName: cityName ?? this.cityName,
    );
  }
}
