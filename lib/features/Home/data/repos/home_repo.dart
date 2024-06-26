import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //    <Lift side , Right Side>
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestSelerBook();
}
