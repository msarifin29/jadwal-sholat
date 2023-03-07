import 'package:flutter/material.dart';

import 'config/config.dart';
import 'features/schedule_adzan/presentation/home_screen.dart';
import 'features/surah/presentation/surah_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SurahScreen.routeName: (context) => const SurahScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
