import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Book_Rating.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Books_Action.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Custom_book_Item.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
          ),
          const SizedBox(
            height: 43,
          ),
          Align(
            child: Text(
              bookModel.volumeInfo.title!,
              style: Styles.textStyle30,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo.authors![0],
              style: Styles.textStyl18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          BooksAction(
            bookModel: bookModel,
          ),
        ],
      )
    ]);
  }
}
