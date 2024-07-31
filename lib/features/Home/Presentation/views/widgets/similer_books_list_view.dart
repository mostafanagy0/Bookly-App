import 'package:bookly_app/features/Home/Presentation/views/widgets/Custom_book_Item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListview extends StatelessWidget {
  const SimilerBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImage(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixlr.com%2Fimage-generator%2F&psig=AOvVaw1EGtf5PnUWmHNoojk3EhdO&ust=1722472274940000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPCr9rKD0IcDFQAAAAAdAAAAABAE',
            ),
          );
        },
      ),
    );
  }
}
