import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/Home/Presentation/views/Home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),

          // ktransactionDuration created in const file
          transition: Transition.fade,
          duration: ktransactionDuration);
    });
  }
}
