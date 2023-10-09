import 'package:bookly/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class CustomItemList extends StatelessWidget {
  const CustomItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return const CustomItem();
        },
      ),
    );
  }
}
