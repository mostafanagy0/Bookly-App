// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (Failure) {
        emit(
          NewestBooksfailure(Failure.errMessage),
        );
      },
      (books) {
        emit(NewestBooksSucces(books));
      },
    );
  }
}
