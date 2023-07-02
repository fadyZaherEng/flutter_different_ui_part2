import 'package:flutter/material.dart';
import 'package:flutter_diffrent_ui_part2/modules/shoes_ecommerce/product_top_part.dart';
import 'package:flutter_diffrent_ui_part2/modules/shoes_ecommerce/utils.dart';

class ShoesEcommerceScreen extends StatefulWidget {
  const ShoesEcommerceScreen({Key? key}) : super(key: key);

  @override
  State<ShoesEcommerceScreen> createState() => _ShoesEcommerceScreenState();
}

class _ShoesEcommerceScreenState extends State<ShoesEcommerceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF696077), Color(0xFF292C36)],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0.0,
          ////////////////////////
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: screenAwareSize(20.0, context),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            "Energy Cloud",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenAwareSize(18.0, context),
              fontFamily: "Montserrat-Bold",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: screenAwareSize(20.0, context),
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: ProductScreen(),
        ),
      ),
    );
  }
}
