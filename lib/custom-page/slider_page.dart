import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
class Sliderpage extends StatefulWidget {
  final List<Widget> carList;
  final PageController pageController;

  const Sliderpage({Key? key, required this.carList, required this.pageController}) : super(key: key);

  @override
  State<Sliderpage> createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  int pageIndex =0;
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView(
            controller: widget.pageController,
            children: widget.carList,
            onPageChanged: (index){
              // controllerPage(index);
              setState(() {
                pageIndex=index;
              });
            },
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
            color: Colors.deepOrange,
            count: widget.carList.length,
            index: pageIndex,
          ),
        ),
      ],
    );
  }
}