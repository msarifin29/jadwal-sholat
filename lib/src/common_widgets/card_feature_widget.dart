import 'package:flutter/material.dart';

import '../config/theme_manager/asset_image.dart';

class CardFeatureWidget extends StatelessWidget {
  const CardFeatureWidget({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(
            width: 120.0,
            image: AssetImage("${AssetsImageIcon.pathImage}/$imagePath"),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!,
          ),
        ],
      ),
    );
  }
}
