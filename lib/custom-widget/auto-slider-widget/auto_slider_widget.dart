import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

Widget autoSliderWidget(BuildContext context, carList,Function(int) onPress, pageController, pageIndex, colors, controllerPage()) {

  return Stack(
    children: [
      SizedBox(
        height: 200,
        width: double.infinity,
        child: PageView(
          controller: pageController,
          children: carList,
          onPageChanged: onPress,
          // onPageChanged: (index){
          //   setState(() {
          //     pageIndex=index;
          //   });
          // },
        ),
      ),
      Positioned(
        bottom: 15,
        left: MediaQuery.of(context).size.width*.45,
        child: CarouselIndicator(
          animationDuration: 1,
          width: 15,
          height: 15,
          cornerRadius: 50.0,
          activeColor: Colors.cyan,
          color: colors,
          count: carList.length,
          index: pageIndex,
        ),
      ),
    ],
  );
}


