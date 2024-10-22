import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/presentation/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreens extends StatelessWidget {
  const IntroductionScreens({super.key});

  static MaterialPageRoute route() => MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: SafeArea(child: IntroductionScreens()),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: _buildDotsDecorator(),
      next: const Icon(Icons.navigate_next, color: Colors.white),
      showBackButton: false,
      showSkipButton: true,
      skip: const Text(
        'Skip',
      ),
      onSkip: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.home,
          (Route<dynamic> route) => false,
        );
      },
      onDone: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.home,
          (Route<dynamic> route) => false,
        );
      },
      done: const Text(
        "Done",
      ),
      pages: _buildPages(),
      nextStyle: _buttonStyle(),
      doneStyle: _buttonStyle(),
      skipStyle: _buttonStyle(),
      dotsFlex: 3,
    );
  }

  DotsDecorator _buildDotsDecorator() {
    return const DotsDecorator(
      color: Colors.grey,
      activeColor: AppColors.buttonColor,
    );
  }

  ButtonStyle _buttonStyle() {
    return const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.buttonColor),
    );
  }

  List<PageViewModel> _buildPages() {
    return [
      _buildPageViewModel(
        title: 'Welcome to Bookly',
        body:
            'Discover a world of books at your fingertips. Dive into your next read with our extensive collection.',
        image: 'assets/images/Dictionary-pana.png',
      ),
      _buildPageViewModel(
        title: 'Browse by Category',
        body:
            'Explore a variety of genres and categories to find books that match your interests, from fiction to non-fiction.',
        image: 'assets/images/Man reading-pana.png',
      ),
      _buildPageViewModel(
        title: 'Bookmark Your Favorites',
        body:
            'Easily bookmark your favorite books and keep track of what you want to read next.',
        image: 'assets/images/Reading glasses-pana.png',
      ),
      _buildPageViewModel(
        title: 'Get Started!',
        body:
            'Ready to dive into your next book? Click below to start your reading journey with Bookly.',
        image: 'assets/images/Thesis-pana.png',
      ),
    ];
  }

  PageViewModel _buildPageViewModel({
    String? title,
    required String body,
    required String image,
  }) {
    return PageViewModel(
      title: title,
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(image, width: 350),
          ),
          const SizedBox(height: 20),
          Text(
            body,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
