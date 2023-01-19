import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/custom-page/custom_outlinebotton_page.dart';
import 'package:uiorus/custom-widget/list-card-widget/list_card_widget.dart';
import 'package:uiorus/custom-widget/row-list-widget/row_list_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
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
                      left: MediaQuery.of(context).size.width*0.25,
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
                                )),),
                          Positioned(
                            // bottom: MediaQuery.of(context).size.height*0.1,
                            bottom: 0,
                            right: 15,
                            child: InkWell(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      const BorderRadius.all(Radius.circular(120)),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 2.0,
                                      // assign the color to the border color
                                      color: Constants().color2)),
                                  child:  SizedBox(
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
                  height:MediaQuery.of(context).size.height*.15,
                ),

                Column(
                  children: [
                   const Text('Jody Wisternoff', style: TextStyle(
                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),),
                    const Text('Experimental electronic music pioneer.', style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey
                      // fontWeight: FontWeight.w500,
                    ),),
                    const Text('Half of duo way out west. Boss al Unadjusted', style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey
                      // fontWeight: FontWeight.w500,
                    ),),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: MediaQuery.of(context).size.width*.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          CustonOutlineButton(
                            sideColors: Constants().primaryValueColor,
                              btnName: 'Following',
                              bgColor:Constants().primaryValueColor,
                               textStyle: const TextStyle(
                                 color: Colors.white,
                                  fontSize: 17,

                               ),
                          ),
                          CustonOutlineButton(
                            btnName: 'Message',
                            sideColors: Constants().primaryValueColor,
                            textStyle:  TextStyle(
                              color: Constants().primaryValueColor,
                              fontSize: 17,

                            ),
                          ),

                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Table(
                        defaultColumnWidth: FixedColumnWidth(130),
                        border: TableBorder.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          TableRow( children: [
                            Column(children:const[
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 15.0,
                                ),
                                child: Text('236', style: TextStyle(
                                    fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                                )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 5.0,
                                  bottom: 15.0
                                ),
                                child: Text('RECORDS', style: TextStyle(
                                    fontSize: 20.0,
                                  color: Colors.grey
                                )),
                              ),
                            ]),
                            Column(children:const[
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 15.0,
                                ),
                                child: Text('23,6K', style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    top: 5.0,
                                    bottom: 15.0
                                ),
                                child: Text('RATINGS', style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.grey
                                )),
                              ),
                            ]),
                            Column(children:const[
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 15.0,
                                ),
                                child: Text('2,8K', style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    // left: 9.0,
                                    // right: 9.0,
                                    top: 5.0,
                                    bottom: 15.0
                                ),
                                child: Text('FOLLOWERS', style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.grey
                                )),
                              ),
                            ]),

                          ],
                          ),]
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*1,
                        child: rowListWidget(savedInventory, Constants().primaryValueColor.withOpacity(0.07),'Car Collection', Constants().iconColors)),

                    // listOfCard('Car Collection:', Colors.grey, Colors.grey, )

                  ],
                )


              ],
            ),
          ),
        ],
      ),
    );
  }
}
