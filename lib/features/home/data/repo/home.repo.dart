// Repositry Pattern => create abstract class with method without implementation
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // Either => abstract class from dartz package that has left side if there is exception and right side if there isn't  
  Future<Either< ,List<BookModel>>> fetchBestSellerBooks();
  Future<List<BookModel>> fetchBooksPhotos();
}
