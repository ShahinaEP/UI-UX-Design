import 'dart:async';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/const-class/list_value.dart';
import 'package:uiorus/custom-page/custom_ecommerce_product_card.dart';
import 'package:uiorus/custom-page/slider_page.dart';
// import 'package:uiorus/custom-widget/auto-slider-widget/auto_slider_widget.dart';
import 'package:uiorus/custom-widget/row-list-widget/row_list_widget.dart';
import 'package:uiorus/custom-widget/search-widget/search_widget.dart';
import 'package:uiorus/pages/home/search.dart';

import '../../custom-widget/list-card-widget/list_card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List savedInventory = [
    {
      'image': 'images/car1.png',
      'carModel': '2020 Genesis G70',
      'subTitle': '3.3T',
      'price': '47,370'
    },
    {
      'image': 'images/car2.png',
      'carModel': '2019 Ford Edge',
      'subTitle': 'Titanium',
      'price': '48,370'
    },
    {
      'image': 'images/car1.png',
      'carModel': 'BMW 3 Series for Sale Near 91204',
      'subTitle': '330i, Sedan',
      'price': '67,309'
    },
    {
      'image': 'images/car2.png',
      'carModel': 'Mazda 3 for Sale Near 91204',
      'subTitle': 'Deep Crystal Blue Mica, Sedan',
      'price': '57,370'
    },
    {
      'image': 'images/car1.png',
      'carModel': '2020 Genesis G70',
      'subTitle': '3.3T',
      'price': '47,370'
    },
  ];
  int pageIndex=0;

  final List<Widget> carList=[
    SizedBox(height: 300,child: Image.network('https://icms-image.slatic.net/images/ims-web/ec488acf-fdab-4aec-b15b-3c610a40fb8f.jpg', fit: BoxFit.fill ),),
    SizedBox(height: 300,child: Image.network('https://icms-image.slatic.net/images/ims-web/7bb1b2ee-24a2-409e-8b2c-2d2beee3b198.jpg', fit: BoxFit.cover),),
    SizedBox(height: 300,child: Image.network('https://icms-image.slatic.net/images/ims-web/b8ac18e6-e56d-4e13-b21b-360727a926ae.jpg', fit: BoxFit.cover),),
    SizedBox(height: 300,child: Image.network('https://icms-image.slatic.net/images/ims-web/976b7df1-769d-44b6-a883-26a6f9193cf8.jpg', fit: BoxFit.cover),),
    SizedBox(height: 300,child: Image.network('https://icms-image.slatic.net/images/ims-web/e640ed3c-bd6b-4890-b82c-f5568a4e84cf.jpg', fit: BoxFit.cover),),
    SizedBox(height: 300,child: Image.network('https://icms-image.slatic.net/images/ims-web/fa718461-3efc-401c-b8fa-fdb71975b7e4.jpg', fit: BoxFit.cover),),
];

  late Timer _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );



  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (pageIndex < 4) {
        pageIndex++;
      } else {
        pageIndex = 0;
      }

      _pageController.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }
  controllerPage(index){
    setState(() {
      pageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
// print(savedInventory);
    return Scaffold(
      backgroundColor: Constants().color1.withOpacity(0.001),
      // This trailing comma makes auto-formatting nicer for build methods.
      body:SafeArea ( child:SingleChildScrollView(
        child: Column(
          children: [
            search_widget(size, context),
           // autoSliderWidget(context, carList, _pageController,pageIndex,Constants().iconColors),
            Sliderpage(carList: carList, pageController:_pageController ,),


            const SizedBox(height: 40,),
            ProductCard(
              title:  'FlashSale',
              productList: ListValue().flashSale,
            ),
            const SizedBox(height: 40,),
            listOfCard(
                'Saved Inventory', Constants().color1, Constants().iconColors),
            const SizedBox(
              height: 20,
            ),
            listOfCard(
                'Saved Searches', Constants().color2, Constants().iconColors2),

            const SizedBox(
              height: 20,
            ),
            rowListWidget(savedInventory, Constants().color1,'Favourite Car', Constants().iconColors),
          ],
        ),
      )),
    );
  }

  Widget autoSliderWidget(BuildContext context, carList, pageController, pageIndex, colors) {
    return Stack(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: PageView(
                  controller: pageController,
                  children: carList,
                  onPageChanged: (index){
                    controllerPage(index);
                    // setState(() {
                    //   pageIndex=index;
                    // });
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
                  color: colors,
                  count: carList.length,
                  index: pageIndex,
                ),
              ),
            ],
          );
  }




}




