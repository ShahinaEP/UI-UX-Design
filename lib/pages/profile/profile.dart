import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/custom-page/custom_outlinebotton_page.dart';
import 'package:uiorus/custom-widget/list-card-widget/list_card_widget.dart';
import 'package:uiorus/custom-widget/row-list-widget/row_list_widget.dart';

import '../../custom-page/custom_ecommerce_product_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List productList = [
    {
      'image':
          'https://static-01.daraz.com.bd/p/9a697a4327c4424db08cb9a27efd7989.jpg',
      'name': 'Sleeve Cotton T-Shirt',
      'price': '৳ 89',
      'rate': '180'
    },
    {
      'image':
          'https://static-01.daraz.com.bd/p/78a48233d00649c18d245d8b093a8aa9.jpg',
      'name': 'Full Sleeved T-Shirt',
      'price': '৳ 99',
      'rate': '36'
    },
    {
      'image':
          'https://static-01.daraz.com.bd/p/0a2751e2417b9e2e6132c0db66b831ce.jpg',
      'name': 'Shot Sleeved T-Shirt',
      'price': '৳ 126',
      'rate': '139'
    },
    {
      'image':
          'https://static-01.daraz.com.bd/p/7af1b61ff1a5da7db02eb052697acd8a.jpg',
      'name': 'Full Sleeved T-Shirt',
      'price': '৳ 99',
      'rate': '36'
    },
    {
      'image':
          'https://static-01.daraz.com.bd/p/563fe9706fa54087ab9f1b975b42b192.jpg',
      'name': 'Unisex - T-Shirt',
      'price': '৳ 85',
      'rate': '36'
    },
  ];
  int selectItem = 0;
  List categoryList = [
    'T-Shirts',
    'Trimmers',
    'Salt',
    'Football',
    'Card Holders',
    'Mart'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const SizedBox(
            //   height: 100,
            // ),

            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmU5qNVMrDWLipxOiQP_liOmFePXFA_9AXzw&usqp=CAU",
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.fill,
                ),
                Positioned.fill(
                  child: Center(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 1.0,
                        sigmaY: 1.0,
                      ),
                      child: Container(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -80,
                  left: MediaQuery.of(context).size.width * 0.25,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(120)),
                            border: Border.all(
                                width: 5.0,
                                // assign the color to the border color
                                color: Constants().primaryValueColor),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmU5qNVMrDWLipxOiQP_liOmFePXFA_9AXzw&usqp=CAU',

                                // fit: BoxFit.cover,
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Positioned(
                        // bottom: MediaQuery.of(context).size.height*0.1,
                        bottom: 0,
                        right: 15,
                        child: InkWell(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(120)),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 2.0,
                                      // assign the color to the border color
                                      color: Constants().color2)),
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.edit,
                                  color: Constants().primaryValueColor,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * .15,
            ),

            Column(
              children: [
                const Text(
                  'Jody Wisternoff',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Experimental electronic music pioneer.',
                  style: TextStyle(fontSize: 17, color: Colors.grey
                      // fontWeight: FontWeight.w500,
                      ),
                ),
                const Text(
                  'Half of duo way out west. Boss al Unadjusted',
                  style: TextStyle(fontSize: 17, color: Colors.grey
                      // fontWeight: FontWeight.w500,
                      ),
                ),

                const SizedBox(height: 20),

                // SizedBox(
                //   width: MediaQuery.of(context).size.width*.8,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children:  [
                //       CustonOutlineButton(
                //         sideColors: Constants().primaryValueColor,
                //           btnName: 'Following',
                //           bgColor:Constants().primaryValueColor,
                //            textStyle: const TextStyle(
                //              color: Colors.white,
                //               fontSize: 17,
                //
                //            ),
                //       ),
                //       CustonOutlineButton(
                //         btnName: 'Message',
                //         sideColors: Constants().primaryValueColor,
                //         textStyle:  TextStyle(
                //           color: Constants().primaryValueColor,
                //           fontSize: 17,
                //
                //         ),
                //       ),
                //
                //     ],
                //   ),
                // ),

                const SizedBox(height: 20),

                Table(
                    defaultColumnWidth: FixedColumnWidth(130),
                    border: TableBorder.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 2),
                    children: [
                      TableRow(
                        children: [
                          Column(children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 15.0,
                              ),
                              child: Text('236',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  // left: 10.0,
                                  // right: 10.0,
                                  top: 5.0,
                                  bottom: 15.0),
                              child: Text('TOTAL CART',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.grey)),
                            ),
                          ]),
                          Column(children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 15.0,
                              ),
                              child: Text('\$23,6K',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
                              child: Text('WALLET',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.grey)),
                            ),
                          ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    top: 15.0,
                                  ),
                                  child: Text('2,8K',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      // left: 9.0,
                                      // right: 9.0,
                                      top: 5.0,
                                      bottom: 15.0),
                                  child: Center(
                                    child: Text('FAVORITE',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.grey)),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ]),
                const SizedBox(height: 30),
              ],
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: selectItem == index
                                  ? Constants().primaryValueColor
                                  : Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(120)),
                              border: Border.all(
                                  // width: 1.0,
                                  // assign the color to the border color
                                  color: selectItem == index
                                      ? Colors.transparent
                                      : Constants().primaryValueColor)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: InkWell(
                              child: Text(
                                categoryList[index],
                                style: TextStyle(
                                    color: selectItem == index
                                        ? Colors.white
                                        : Constants().primaryValueColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17),
                              ),
                              onTap: () {
                                setState(() {
                                  selectItem = index;
                                  print(selectItem);
                                });
                              },
                            ),
                          ),
                        ),
                      );
                    })),
            ProductCard(
              title:  categoryList[selectItem],
              productList: productList,
            ),
          ],
        ),
      ),

      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [

      //   ],
      // ),
    );
  }
}
