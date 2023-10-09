import 'package:bookly/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class CustomItemList extends StatelessWidget {
  const CustomItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // to prevent Scrolling in this list
      physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap => to deal with Slivers but it make ListView build all items in one time this will affect on performance
      // shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (ctx, index) => const SizedBox(
              height: 15,
            ),
        itemBuilder: (ctx, index) {
          return const CustomItem();
        });
  }
}
