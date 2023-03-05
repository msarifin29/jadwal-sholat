import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/features/schedule_adzan/presentation/bloc/schedule_adzan/schedule_adzan_bloc.dart';
import 'package:my_project/src/features/schedule_adzan/presentation/widgets/schedule_adzan_widget.dart';

import '../../../../config/theme_manager/app_size.dart';
import '../bloc/city/city_bloc.dart';

class CityAdzanWidget extends StatefulWidget {
  const CityAdzanWidget({
    super.key,
  });

  @override
  State<CityAdzanWidget> createState() => _CityAdzanWidgetState();
}

class _CityAdzanWidgetState extends State<CityAdzanWidget> {
  String citySelected = "Daftar kota";

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: AppSize.s6,
          bottom: AppSize.s10,
        ),
        child: BlocBuilder<CityBloc, CityAdzanState>(
          builder: (context, state) {
            if (state is CityAdzanLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CityAdzanLoaded) {
              return Column(
                children: [
                  DropdownButton(
                    alignment: Alignment.center,
                    hint: Text(citySelected),
                    items: state.city.map((cityName) {
                      return DropdownMenuItem(
                        onTap: () {
                          context
                              .read<CityBloc>()
                              .add(CityAdzanEvent(cityName: cityName));
                          context
                              .read<ScheduleAdzanBloc>()
                              .add(GetScheduleEvent(city: cityName));
                        },
                        value: cityName,
                        child: Text(
                          cityName,
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // setState(() {
                      //   citySelected = value!;
                      // });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on),
                      Text("${state.cityName} dan sekitarnya"),
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.s20,
                  ),
                  ScheduleAdzanWidget(city: citySelected),
                ],
              );
            }
            return Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context
                        .read<CityBloc>()
                        .add(CityAdzanEvent(cityName: citySelected));
                  },
                  icon: const Icon(Icons.location_on),
                  label: const Text("Pilih kota"),
                ),
                const SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
