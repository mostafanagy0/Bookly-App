import 'package:bookly_app/features/Home/Presentation/views/widgets/custom_Appbar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppbarBookDetails(),
        ],
      ),
    );
  }
}
