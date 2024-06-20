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
            padding: EdgeInsets.symmetric(horizontal: Width * .17),
            child: const CustomBookItem(),
          ),
        ],
      ),
    );
  }
}
