import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'you can also Like',
        style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 12,
      ),
      const SimilerBooksListview(),
      const SizedBox(
        height: 40,
      )
    ]);
  }
}
