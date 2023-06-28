import 'package:flutter/material.dart';
import 'package:flutter_diffrent_ui_part2/onboarding_screen_animation_ui/welcome/widgets/welcome_slide.dart';

class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({
    required this.controller,
    super.key,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller,
      children: const [
        WelcomeSlide(
          path: 'assets/images/1.jpg',
        ),
        WelcomeSlide(
          path: 'assets/images/4.jpg',
        ),
        WelcomeSlide(
          path: 'assets/images/5.jpg',
        ),
      ],
    );
  }
}
