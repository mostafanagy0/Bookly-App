import 'package:bookly_app/features/Home/Presentation/views/widgets/Similer_Books_section.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/custom_Appbar_book_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
        //no widget scrool only ui
        hasScrollBody: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomAppbarBookDetails(),
              BooksDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilerBooksSection()
            ],
          ),
        ),
      )
    ]);
  }
}
