import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo_implementation.dart';
import 'package:equatable/equatable.dart';

part 'books_photos_state.dart';

class BooksPhotosCubit extends Cubit<BooksPhotosState> {
  BooksPhotosCubit(this.homeRepoImplementation) : super(BooksPhotosInitial());

  final HomeRepoImplementation homeRepoImplementation;
  Future<void> fetchBooksPhotos() async {
    emit(BooksPhotosLoading());
      var result = await homeRepoImplementation.fetchNewestBooks();
      result.fold((failure) => emit(BooksPhotosFailure(errMsg: failure.errMsg)),
          (books) => emit(BooksPhotosSuccess(books: books)));
  }
}
