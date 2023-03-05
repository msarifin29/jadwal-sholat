// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:my_project/src/features/schedule_adzan/data/repository/city_repository.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends HydratedBloc<CityEvent, CityAdzanState> {
  CityBloc() : super(CityAdzanInitial()) {
    on<CityAdzanEvent>((event, emit) async {
      emit(CityAdzanLoading());
      final city = await CityRepository.fetchCity();
      emit(CityAdzanLoaded(
        city: city,
        cityName: event.cityName,
      ).copyWith(
        city: city,
        cityName: event.cityName,
      ));
    });
  }

  @override
  CityAdzanState? fromJson(Map<String, dynamic> json) {
    try {
      final listCity = (json["city"] as List).map((e) => e as String).toList();
      return CityAdzanLoaded(
        city: listCity,
        cityName: json["cityName"] as String,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(CityAdzanState state) {
    if (state is CityAdzanLoaded) {
      return state.toJson();
    } else {
      return null;
    }
  }
}
