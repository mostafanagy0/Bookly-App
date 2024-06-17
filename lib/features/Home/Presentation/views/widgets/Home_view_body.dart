import 'package:bookly_app/features/Home/Presentation/views/widgets/custom_appPar.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/featured_Books_List_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppPar(),
        FeaturedBoxListrView(),
      ],
    );
  }
}
