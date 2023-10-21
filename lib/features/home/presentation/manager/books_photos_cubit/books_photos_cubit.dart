import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home.repo.dart';
import 'package:dartz/dartz.dart';

import 'package:equatable/equatable.dart';

part 'books_photos_state.dart';

class BooksPhotosCubit extends Cubit<BooksPhotosState> {
  BooksPhotosCubit(this.homeRepo) : super(BooksPhotosInitial());

  final HomeRepo homeRepo;
  Future<void> fetchBooksPhotos() async {
    emit(BooksPhotosLoading());
      var result = await homeRepo.fetchBooksPhotos();
      result.fold((failure) => emit(BooksPhotosFailure(errMsg: failure.errMsg)),
          (books) => emit(BooksPhotosSuccess(books: books)));

  }
}