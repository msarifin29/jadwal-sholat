import 'package:flutter/material.dart';
import 'package:my_project/src/config/config.dart';
import 'widgets/city_adzan_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = home;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Jadwal sholat",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColor.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CityAdzanWidget(),
            heightBox20(),
            // Row(
            //   children: const [
            //     CardFeatureWidget(
            //       title: "Surah",
            //       imagePath: "surah.jpg",
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
