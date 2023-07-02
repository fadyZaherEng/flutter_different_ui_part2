import 'package:flutter/material.dart';
import 'package:flutter_diffrent_ui_part2/modules/awesome_card/card.dart';
import 'package:flutter_diffrent_ui_part2/modules/darg_and_drop_item/main.dart';
import 'package:flutter_diffrent_ui_part2/modules/shoes_ecommerce/main.dart';
import 'package:flutter_diffrent_ui_part2/onboarding_screen_animation_ui/welcome/welcome_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ShoesEcommerceScreen(),
    );
  }
}
