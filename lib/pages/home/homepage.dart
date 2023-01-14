import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/custom-widget/search-widget/list-card-widget/list_card_widget.dart';
import 'package:uiorus/custom-widget/search-widget/search_widget.dart';
import 'package:uiorus/pages/home/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List savedInventory = [
    {
      'image':'images/car1.png',
      'carModel': '2020 Genesis G70',
      'subTitle': '3.3T',
      'price':'47,370'
    },
    {
      'image':'images/car2.png',
      'carModel': '2019 Ford Edge',
      'subTitle': 'Titanium',
      'price':'48,370'
    },
    {
      'image':'images/car1.png',
      'carModel': 'BMW 3 Series for Sale Near 91204',
      'subTitle': '330i, Sedan',
      'price':'67,309'
    },
    {
      'image':'images/car2.png',
      'carModel': 'Mazda 3 for Sale Near 91204',
      'subTitle': 'Deep Crystal Blue Mica, Sedan',
      'price':'57,370'
    },
    {
      'image':'images/car1.png',
      'carModel': '2020 Genesis G70',
      'subTitle': '3.3T',
      'price':'47,370'
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
// print(savedInventory);
    return SafeArea(
      // This trailing comma makes auto-formatting nicer for build methods.
      child: Column(
        children: [
          search_widget(size, context),
          listOfCard('Saved Inventory',Constants().color1 , Constants().iconColors),
          const SizedBox(height: 20,),
          listOfCard('Saved Searches',Constants().color2, Constants().iconColors2 ),

        ],
      ),
    );
  }


}
