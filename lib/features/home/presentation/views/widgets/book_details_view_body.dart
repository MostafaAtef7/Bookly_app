import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.8,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
