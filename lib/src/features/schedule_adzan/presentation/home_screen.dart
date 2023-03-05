// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_project/src/config/config.dart';
import 'package:my_project/src/config/theme_manager/app_size.dart';

import '../../../common_widgets/card_feature_widget.dart';
import 'widgets/city_adzan_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = home;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Jadwal Sholat"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CityAdzanWidget(),
            heightBox20(),
            Row(
              children: const [
                CardFeatureWidget(
                  title: "Surah",
                  imagePath: "surah.jpg",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
