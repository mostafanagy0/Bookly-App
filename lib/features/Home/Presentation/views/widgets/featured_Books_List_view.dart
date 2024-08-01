import 'package:bookly_app/core/utils/App_Router.dart.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/Home/Presentation/maneger/Featured_books_Cubit/feetured_books_cubit.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/Custom_book_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBoxListrView extends StatelessWidget {
  const FeaturedBoxListrView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetails,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            ''),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailur) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
