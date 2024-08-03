import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/shearch/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  Future<void> searchInBooks(String value) async {
    emit(SearchLodind());
    var result = await searchRepo.searchBook(value);
    result.fold(
      (Failure) {
        emit(
          SearchFailur(Failure.errMessage),
        );
      },
      (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}
