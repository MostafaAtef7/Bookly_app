import 'package:bookly/core/utils/app_routers.dart';
import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly/features/search/presentation/manager/book_search_cubit/book_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.searchWords});
  final String searchWords;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: (context, state) {
      if (state is BookSearchSuccess) {
        return ListView.separated(
            // shrinkWrap => to deal with Slivers but it make ListView build all items in one time this will affect on performance
            // shrinkWrap: true,
            itemCount: state.books.length,
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 15,
                ),
            itemBuilder: (ctx, index) {
              if (state.books[index].volumeInfo!.title!.contains(searchWords)) {
                return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.bookDetailsView);
                    },
                    child: CustomItem(
                      book: state.books[index],
                    ));
              } else {
                return const SizedBox();
              }
            });
      } else if (state is BookSearchFailure) {
        return CustomError(errMsg: state.errMsg);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
