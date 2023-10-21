import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import 'package:equatable/equatable.dart';

part 'books_photos_state.dart';

class BooksPhotosCubit extends Cubit<BooksPhotosState> {
  BooksPhotosCubit() : super(BooksPhotosInitial());
}
