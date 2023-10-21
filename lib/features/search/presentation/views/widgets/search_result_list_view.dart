import 'package:bookly/core/utils/app_routers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        // shrinkWrap => to deal with Slivers but it make ListView build all items in one time this will affect on performance
        // shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (ctx, index) => const SizedBox(
              height: 15,
            ),
        itemBuilder: (ctx, index) {
          return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.bookDetailsView);
              },
              child: const CustomItem(book: BookModel(),));
        });
  }
}
