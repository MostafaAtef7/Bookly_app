import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "book_search_state.dart";

class BookSearchCubit extends Cubit<BookSearchState> {
  BookSearchCubit(super.initialState, this.searchRepo);
  final SearchRepo searchRepo;

  Future<void> fetchBooksInSearch() async {
    emit(BookSearchLoading());
    var result = await searchRepo.fetchSearchedBooks();
    result.fold((failure) => emit(BookSearchFailure(errMsg: failure.errMsg)),
        (books) => emit(BookSearchSuccess(books: books)));
  }
}
