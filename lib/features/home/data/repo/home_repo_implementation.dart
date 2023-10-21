import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home.repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          url:
              "volumes?q=subjetc:Proframming&Filtering=free-ebooks&Sorting=newest");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
        return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
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
