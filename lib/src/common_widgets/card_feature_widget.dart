// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../config/theme_manager/asset_image.dart';

class CardFeatureWidget extends StatelessWidget {
  const CardFeatureWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Image(
              width: 100.0,
              image: AssetImage("${AssetsImageIcon.pathImage}/$imagePath"),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge!,
            ),
          ],
        ),
      ),
    );
  }
}
