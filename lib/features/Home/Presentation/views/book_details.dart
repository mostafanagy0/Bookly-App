import 'package:bookly_app/features/Home/Presentation/maneger/fetch_similer_cubit/fetch_similer_cubit.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/book_details_body.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilerBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
