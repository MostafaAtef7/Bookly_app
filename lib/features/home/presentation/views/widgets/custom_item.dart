import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    // AspectRatio => if you put height it handle width based on height and otherwise
    return AspectRatio(
      aspectRatio: 1 / 2, //  width/height
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsPathes.testImage)),
        ),
      ),
    );
  }
}
