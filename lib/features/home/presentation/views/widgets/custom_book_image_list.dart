import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class CustomBookImageList extends StatelessWidget {
  const CustomBookImageList({super.key});

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
          return const CustomBookImage();
        },
      ),
    );
  }
}
