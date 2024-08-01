import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/Home/Presentation/maneger/fetch_similer_cubit/fetch_similer_cubit.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Custom_book_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListview extends StatelessWidget {
  const SimilerBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilerBooksFailur) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
