import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/custom_appPar.dart';
import 'package:bookly_app/features/Home/Presentation/views/widgets/featured_Books_List_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppPar(),
          FeaturedBoxListrView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyl18,
          ),
          BestesllerListviewItem()
        ],
      ),
    );
  }
}

class BestesllerListviewItem extends StatelessWidget {
  const BestesllerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            // 2.7 / 4  =>  2.7 : 4
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/test_image.png'))),
            ),
          )
        ],
      ),
    );
  }
}
