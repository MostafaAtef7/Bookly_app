import 'package:bookly/features/search/presentation/manager/book_search_cubit/book_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> fetchBookSearchFun(BuildContext context) async {
  await BlocProvider.of<BookSearchCubit>(context).fetchBooksInSearch();
}
