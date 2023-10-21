import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home.repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  Dio dio = Dio();
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    // dio.get(Uri.parse(
    //     "volumes?q=Proframming&Filtering=free-ebooks"));
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchBooksDetails() {
    // TODO: implement fetchBooksDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchBooksPhotos() {
    // TODO: implement fetchBooksPhotos
    throw UnimplementedError();
  }
}
