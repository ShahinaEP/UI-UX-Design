import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/custom-widget/row-list-widget/row_list_widget.dart';
import 'package:uiorus/custom-widget/search-widget/search_widget.dart';
import 'package:uiorus/pages/home/search.dart';

import '../../custom-widget/list-card-widget/list_card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
// print(savedInventory);
    return SafeArea(
      // This trailing comma makes auto-formatting nicer for build methods.
      child: SingleChildScrollView(
        child: Column(
          children: [
            search_widget(size, context),
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
      ),
    );
  }


}
