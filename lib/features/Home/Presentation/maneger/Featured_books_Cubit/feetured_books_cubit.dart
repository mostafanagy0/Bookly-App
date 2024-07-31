// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feetured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeeturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (Failure) {
        emit(
          FeaturedBooksFailur(Failure.errMessage),
        );
      },
      (books) {
        emit(FeaturedBooksSucces(books));
      },
    );
  }
}
