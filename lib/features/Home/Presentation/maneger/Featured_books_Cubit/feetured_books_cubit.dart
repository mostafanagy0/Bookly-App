import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'feetured_books_state.dart';

class FeeturedBooksCubit extends Cubit<FeeturedBooksState> {
  FeeturedBooksCubit() : super(FeeturedBooksInitial());
}
