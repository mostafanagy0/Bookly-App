import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/shearch/presentation/maneger/Search_Book_cubit/search_cubit.dart';
import 'package:bookly_app/features/shearch/presentation/views/widgets/custom_search_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<BookModel> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextfield(
                onSubmitted: (value) {
                  setState(() {
                    BlocProvider.of<SearchCubit>(context).searchInBooks(value);
                  });
                },
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Search Result',
                style: Styles.textStyl18,
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                  child: state is SearchSuccess
                      ? const SearchResultListView()
                      : state is SearchFailur
                          ? const Text('Failure')
                          : state is SearchInitial
                              ? const Text("")
                              : const CustomLodingIndicator())
            ],
          ),
        );
      },
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            //child: BookListViewItem(),
          );
        });
  }
}
