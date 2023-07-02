
import 'package:flutter/material.dart';
import 'package:flutter_diffrent_ui_part2/modules/shoes_ecommerce/data.dart';
import 'package:flutter_diffrent_ui_part2/modules/shoes_ecommerce/utils.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen();

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isExpanded = false;
  int currentSizeIndex = 0;
  int counter = 0;
  int currentColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //image
        Image.asset(
          "assets/images/adidas.png",
          width: double.infinity,
          height:screenAwareSize(120, context),
          fit: BoxFit.fill,
        ),
        //text
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "Rating",
            style: TextStyle(
                color: const Color(0xFF949598),
                fontSize: screenAwareSize(14.0, context),
                fontFamily: "Monteserrat-SemiBold"),
          ),
        ),
        SizedBox(height: screenAwareSize(9.0, context)),
        //text image text
        Row(
          children:
          [
            const SizedBox(
              width: 25.0,
            ),
            const Icon(
              Icons.star,
              color: Color(0xFFFFE600),
            ),
            SizedBox(
              width: screenAwareSize(5.0, context),
            ),
            const Text(
              "4.5",
              style: TextStyle(color: Color(0xFFFFE600)),
            ),
            SizedBox(
              width: screenAwareSize(5.0, context),
            ),
            const Text("(378 People)",
                style: TextStyle(color: Colors.white, fontSize: 14.0)),
          ],
        ),
        const SizedBox(height: 10,),
        //text
        Padding(
          padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
          child: Text("Product Description",
              style: TextStyle(
                  color: const Color(0xFF949598),
                  fontSize: screenAwareSize(14.0, context),
                  fontFamily: "Montserrat-SemiBold")),
        ),
        SizedBox(height: screenAwareSize(8.0, context)),
        //read more text with animated cross fade
        //text of read
        Padding(
          padding: EdgeInsets.only(
              left: screenAwareSize(26.0, context),
              right: screenAwareSize(18.0, context)),
          child: AnimatedCrossFade(
            firstChild: Text(
              desc,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Medium"),
            ),
            secondChild: Text(
              desc,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Medium"),
            ),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: kThemeAnimationDuration,
          ),
        ),
        //read more text
        Padding(
          padding: EdgeInsets.only(
              left: screenAwareSize(26.0, context),
              right: screenAwareSize(18.0, context)),
          child: GestureDetector(
              onTap: _expand,
              child: Text(
                isExpanded ? "less" : "more..",
                style: const TextStyle(
                    color: Color(0xFFFB382F), fontWeight: FontWeight.w700),
              )),
        ),
        SizedBox(
          height: screenAwareSize(12.0, context),
        ),
        //text   text
        Padding(
          padding: EdgeInsets.only(left: screenAwareSize(15.0, context), right: screenAwareSize(75.0, context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              Text("Size",
                  style: TextStyle(
                      color: const Color(0xFF949598),
                      fontFamily: "MontSerrat-SemiBold",
                      fontSize: screenAwareSize(10.0, context))),
              Text("Quantity",
                  style: TextStyle(
                      color: const Color(0xFF949598),
                      fontFamily: "MontSerrat-SemiBold",
                      fontSize: screenAwareSize(10.0, context))),
            ],
          ),
        ),
        //boxes
        Padding(
          padding: EdgeInsets.only(left: screenAwareSize(20.0, context), right: screenAwareSize(10.0, context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              SizedBox(
                height: screenAwareSize(38.0, context),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: sizeNumList.map((item) {
                    var index = sizeNumList.indexOf(item);
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSizeIndex = index;
                        },);
                      },
                      child: sizeItem(item, index == currentSizeIndex, context),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(screenAwareSize(12.0, context)),
                  child: Container(
                    width: screenAwareSize(100.0, context),
                    height: screenAwareSize(30.0, context),
                    decoration: BoxDecoration(
                        color: const Color(0xFF525663),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                      [
                        GestureDetector(
                          onTap: _decrease,
                          child: const SizedBox(
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                counter.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        GestureDetector(
                          onTap: _increase,
                          child: const SizedBox(
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //space
        SizedBox(
          height: screenAwareSize(4.0, context),
        ),
        //text
        Padding(
          padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
          child: Text("Select Color",
              style: TextStyle(
                  color: const Color(0xFF949598),
                  fontSize: screenAwareSize(14.0, context),
                  fontFamily: "Montserrat-SemiBold")),
        ),
        SizedBox(
          height: screenAwareSize(8.0, context),
        ),
        //color clip
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: screenAwareSize(20.0, context)),
          height: screenAwareSize(34.0, context),
          child: Row(
            children:[
              for(int i=0;i<colors.length;i++)
                colorSelector(i)
            ],
          ),
        ),
        SizedBox(height: screenAwareSize(8.0, context)),
        Padding(
          padding: EdgeInsets.only(left: screenAwareSize(20.0, context)),
          child: const Text("price",
              style: TextStyle(
                  color: Color(0xFF949598),
                  fontFamily: "Montserrat-SemiBold")),
        ),
        //last part
        SizedBox(
          width: double.infinity,
          height: screenAwareSize(110.0, context),
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              //text w button
              Container(
                  margin:
                  EdgeInsets.only(left: screenAwareSize(22.0, context)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenAwareSize(18.0, context)),
                        child: Row(
                          children: <Widget>[
                            Text("\$",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenAwareSize(26.0, context),
                                    fontFamily: "Montserrat-Medium")),
                            SizedBox(width: screenAwareSize(2.0, context)),
                            Text("80",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenAwareSize(26.0, context),
                                    fontFamily: "Montserrat-Medium")),
                          ],
                        ),
                      ),
                      SizedBox(height: screenAwareSize(10.0, context)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: MaterialButton(
                          onPressed: () {},
                          color: const Color(0xFFFB382F),
                          padding: EdgeInsets.symmetric(
                            vertical: screenAwareSize(14.0, context),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: screenAwareSize(35.0, context)),
                              child: Text("Add to cart",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenAwareSize(15.0, context),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              //image
              Positioned(
                right: -20.0,
                bottom: -45.0,
                child: Image.asset(
                  "assets/images/cart.png",
                  width: screenAwareSize(190, context),
                  height: screenAwareSize(155.0, context),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  void _expand() {
    setState(() {
      isExpanded =!isExpanded;
    });
  }
  Widget sizeItem(String size, bool isSelected, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenAwareSize(12, context),
      ),
      child: Container(
        width: screenAwareSize(30.0, context),
        height: screenAwareSize(30.0, context),
        decoration: BoxDecoration(
            color: isSelected ?
            const Color(0xFFFC3930) :
            const Color(0xFF522663),
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color:
                isSelected ? Colors.black.withOpacity(.5) : Colors.black12,
                offset: const Offset(0.0, 10.0),
                blurRadius: 10.0,
              ),
            ]),
        child: Center(
          child: Text(size,
              style: const TextStyle(
                  color: Colors.white, fontFamily: "Montserrat-Bold")),
        ),
      ),
    );
  }
  Widget divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: Container(
        width: 0.8,
        color: Colors.black,
      ),
    );
  }
  void _increase() {
    setState(() {
      counter++;
    },);
  }
  void _decrease() {
    setState(() {
      counter--;
    },);
  }
  Widget colorSelector(int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentColorIndex = i;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: screenAwareSize(10.0, context)),
        child: Container(
          width: screenAwareSize(30.0, context),
          height: screenAwareSize(30.0, context),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: currentColorIndex == i
                  ? [
                BoxShadow(
                  color: Colors.black.withOpacity(.8),
                  blurRadius: 10.0,
                  offset: const Offset(0.0, 10.0),
                )
              ]
                  : []),
          child: ClipPath(
            clipper: MClipper(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: colors[i],
            ),
          ),
        ),
      ),
    );
  }
}

class MClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}