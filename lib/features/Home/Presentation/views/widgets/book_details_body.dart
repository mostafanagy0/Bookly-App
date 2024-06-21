import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Book_Rating.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Books_Action.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Custom_book_Item.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/custom_Appbar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var Width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomAppbarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Width * .2),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'rudyard Kipling',
              style: Styles.textStyl18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction()
        ],
      ),
    );
  }
}
