import 'package:bookly/features/search/presentation/manager/book_search_cubit/book_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void getSearchWords(BuildContext ctx, String value) {
  BlocProvider.of<BookSearchCubit>(ctx).searchWords = value;
}
