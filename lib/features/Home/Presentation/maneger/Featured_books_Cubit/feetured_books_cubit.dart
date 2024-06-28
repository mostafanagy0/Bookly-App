import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feetured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeeturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeeturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    var result = await homeRepo.fetchFeatureBooks();
    result.fold(
      (Failure) {
        emit(
          FeeturedBooksFailur(Failure.error),
        );
      },
      (Books) {
        emit(FeeturedBooksSucces(Books));
      },
    );
  }
}
