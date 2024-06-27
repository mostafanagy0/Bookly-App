part of 'feetured_books_cubit.dart';

sealed class FeeturedBooksState extends Equatable {
  const FeeturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeeturedBooksInitial extends FeeturedBooksState {}

final class FeeturedBooksLoding extends FeeturedBooksState {}

final class FeeturedBooksFailur extends FeeturedBooksState {
  final String errorMessage;

  const FeeturedBooksFailur(this.errorMessage);
}

final class FeeturedBooksSucces extends FeeturedBooksState {
  final List<BookModel> books;

  const FeeturedBooksSucces(this.books);
}
