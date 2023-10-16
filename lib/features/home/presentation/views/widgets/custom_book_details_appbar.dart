import 'package:flutter/material.dart';

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
          color: Colors.white,
          iconSize: 25,
          highlightColor: const Color.fromARGB(255, 83, 83, 83),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
          color: Colors.white,
          iconSize: 25,
          highlightColor: const Color.fromARGB(255, 83, 83, 83),
        )
      ],
    );
  }
}
