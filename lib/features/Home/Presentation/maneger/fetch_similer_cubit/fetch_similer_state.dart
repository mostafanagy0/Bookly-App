part of 'fetch_similer_cubit.dart';

sealed class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

final class SimilerBooksInitial extends SimilerBooksState {}

final class SimilerBooksSucess extends SimilerBooksState {
  final List<BookModel> books;

  const SimilerBooksSucess(this.books);
}

final class SimilerBooksLoding extends SimilerBooksState {}

final class SimilerBooksFailur extends SimilerBooksState {
  final String errMessage;

  const SimilerBooksFailur(this.errMessage);
}
