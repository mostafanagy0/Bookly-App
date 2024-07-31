part of 'feetured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeeturedBooksInitial extends FeaturedBooksState {}

final class FeeturedBooksLoding extends FeaturedBooksState {}

final class FeaturedBooksFailur extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailur(this.errMessage);
}

final class FeaturedBooksSucces extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSucces(this.books);
}
