import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key, required this.mainAxisAlignment});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 15,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2148)",
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
