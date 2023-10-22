import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/search/presentation/manager/book_search_cubit/book_search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(child: SearchResultListView(searchWords: BlocProvider.of<BookSearchCubit>(context).searchWords,))
        ],
      ),
    );
  }
}
