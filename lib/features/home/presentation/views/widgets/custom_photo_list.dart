import 'package:bookly/features/home/presentation/views/widgets/custom_photo.dart';
import 'package:flutter/material.dart';

class CustomPhotoList extends StatelessWidget {
  const CustomPhotoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (ctx, index) => const SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return const CustomPhoto();
        },
      ),
    );
  }
}
