// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_similer_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilerBooks({required String category}) async {
    emit(SimilerBooksLoding());
    var result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold((Failure) {
      emit(SimilerBooksFailur(Failure.errMessage));
    }, (books) {
      emit(SimilerBooksSucess(books));
    });
  }
}
