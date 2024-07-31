import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/App_Router.dart.dart';
import 'package:bookly_app/core/utils/Service_locator.dart';
import 'package:bookly_app/features/Home/Presentation/maneger/Featured_books_Cubit/feetured_books_cubit.dart';
import 'package:bookly_app/features/Home/Presentation/maneger/Newest_books_Cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/data/repos/Home_Repo_Implemntion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            // .. => request to fetch data
            getIt.get<HomeRepoImpl>(),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          )),
    );
  }
}
