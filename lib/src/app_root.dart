import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/features/schedule_adzan/data/repository/schedule_adzan_repository.dart';
import 'package:my_project/src/features/schedule_adzan/presentation/bloc/city/city_bloc.dart';
import 'package:my_project/src/features/schedule_adzan/presentation/bloc/schedule_adzan/schedule_adzan_bloc.dart';
import 'package:my_project/src/features/schedule_adzan/data/repository/city_repository.dart';

import 'app_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => CityRepository()),
        RepositoryProvider(create: (context) => ScheduleAdzanRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CityBloc(),
          ),
          BlocProvider(
            create: (context) => ScheduleAdzanBloc(
                repository:
                    RepositoryProvider.of<ScheduleAdzanRepository>(context)),
          ),
        ],
        child: const AppScreen(),
      ),
    );
  }
}
