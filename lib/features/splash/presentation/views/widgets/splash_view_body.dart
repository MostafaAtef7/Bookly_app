import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

// SingleTickerProviderStateMixin => handle rate of values' changes and "Single" because we use one AnimationController
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // AnimationController => it has 0:1 values to change animation
  late AnimationController animationController;
  // Make me able to give AnimationController take value 0: any number
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlideAnimation();
    navigatToHomeView();
    super.initState();
  }

  
// any controller we must dispose it because if we didn't it will work for nothing
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //stretch => make children has frame take all width of the screen
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsPathes.logo),
          const SizedBox(
            height: 10,
          ),
          // AnimatedBuilder => wrape widget that use animation to rebuild it only without rebuild all UI
          SlidingText(slidingAnimation: slidingAnimation),
          // AnimatedBuilder(
          //     animation: slidingAnimation,
          //     builder: (context, _) {
          //       return SlideTransition(
          //         position: slidingAnimation,
          //         child: const Text(
          //           "Open Your Mind",
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       );
          //     })
        ],
      ),
    );
  }
  void navigatToHomeView() {
    // to apply something after the duration
    Future.delayed(const Duration(seconds: 2), () {
      // using getx to navigator
      Get.to(() => const HomeView(),
          duration: kTransitionAnimation, transition: Transition.fade);
    });
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this /*refere to SingleTickerProviderStateMixin*/,
      duration: const Duration(seconds: 3), /*Animation works for the duration*/
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 15),
      end: const Offset(0, 0),
    ).animate(animationController);
    // start playing animation
    animationController.forward();

    // listen to any change and setState but we user AnimatedBuilder so it listen instead addListener
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

}
