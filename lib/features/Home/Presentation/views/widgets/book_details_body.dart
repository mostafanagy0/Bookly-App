import 'package:bookly_app/features/Home/Presentation/views/widgets/Similer_Books_section.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/custom_Appbar_book_details.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        //no widget scrool only ui
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomAppbarBookDetails(),
              BooksDetailsSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilerBooksSection()
            ],
          ),
        ),
      )
    ]);
  }
}
