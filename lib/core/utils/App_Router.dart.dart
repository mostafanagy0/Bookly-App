import 'package:bookly_app/core/utils/Service_locator.dart';
import 'package:bookly_app/features/Home/Presentation/maneger/fetch_similer_cubit/fetch_similer_cubit.dart';
import 'package:bookly_app/features/Home/Presentation/views/Home_view.dart';
import 'package:bookly_app/features/Home/Presentation/views/book_details.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/Home_Repo_Implemntion.dart';
import 'package:bookly_app/features/shearch/presentation/views/Search_View.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetails = '/BookDetails';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilerBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetails(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
