
import 'package:flutter/material.dart';
Widget rowListWidget(savedInventory, bgColor, title, iconColors) {
  return Container(
    color:bgColor,
    // Colors.grey.withOpacity(0.3),
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...savedInventory.map(
                        (e) => // Text(e['carModel'].toString())),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        child: Padding(
                          padding:
                          const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              // ...savedInventory.map((e) => Text(e['carModel'].toString())),
                              // Image.network('src'),
                              Container(
                                width: 250,
                                height: 100,
                                color: Colors.cyan,
                                child:
                                Image.asset(e['image']),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(
                                    top: 8.0),
                                child: Text(
                                  e['carModel'],
                                  style: const TextStyle(
                                      fontWeight:
                                      FontWeight.w600,
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                e['subTitle'],
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
                                    children: [
                                      const Text(
                                          'Dealer Review'),
                                      Row(
                                        children: [
                                          Icon(Icons.star_border, color: iconColors,),
                                          Icon(Icons.star_border, color: iconColors,),
                                          Icon(Icons.star_border, color: iconColors,),
                                          Icon(Icons.star_border, color: iconColors,),
                                          Icon(Icons.star_border, color: iconColors,),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .end,
                                    children: [
                                      const Text(
                                        'MSRP ',
                                        style: TextStyle(
                                            color: Colors
                                                .grey),
                                      ),
                                      Text(
                                        style: const TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .bold),
                                        '\$${e['price']}',
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          // SizedBox(
          //   height: 270,
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: 5,
          //       itemBuilder: (BuildContext context, int index) {
          //         return Row(
          //           children: [
          //             ...savedInventory.map(
          //                     (e) => // Text(e['carModel'].toString())),
          //                 Padding(
          //                   padding: const EdgeInsets.all(5.0),
          //                   child: Card(
          //                     child: Padding(
          //                       padding:
          //                       const EdgeInsets.all(12.0),
          //                       child: Column(
          //                         crossAxisAlignment:
          //                         CrossAxisAlignment.start,
          //                         children: [
          //                           // ...savedInventory.map((e) => Text(e['carModel'].toString())),
          //                           // Image.network('src'),
          //                           Container(
          //                             width: 250,
          //                             height: 100,
          //                             color: Colors.cyan,
          //                             child:
          //                             Image.asset(e['image']),
          //                           ),
          //                           Padding(
          //                             padding:
          //                             const EdgeInsets.only(
          //                                 top: 8.0),
          //                             child: Text(
          //                               e['carModel'],
          //                               style: const TextStyle(
          //                                   fontWeight:
          //                                   FontWeight.w600,
          //                                   fontSize: 20),
          //                             ),
          //                           ),
          //                           Text(
          //                             e['subTitle'],
          //                             style: const TextStyle(
          //                                 color: Colors.grey,
          //                                 fontSize: 12),
          //                           ),
          //                           const SizedBox(
          //                             height: 30,
          //                           ),
          //                           Row(
          //                             mainAxisAlignment:
          //                             MainAxisAlignment
          //                                 .spaceBetween,
          //                             children: [
          //                               Column(
          //                                 crossAxisAlignment:
          //                                 CrossAxisAlignment
          //                                     .start,
          //                                 children: [
          //                                   const Text(
          //                                       'Dealer Review'),
          //                                   Row(
          //                                     children: [
          //                                       Icon(Icons.star_border, color: iconColors,),
          //                                       Icon(Icons.star_border, color: iconColors,),
          //                                       Icon(Icons.star_border, color: iconColors,),
          //                                       Icon(Icons.star_border, color: iconColors,),
          //                                       Icon(Icons.star_border, color: iconColors,),
          //                                     ],
          //                                   )
          //                                 ],
          //                               ),
          //                               const SizedBox(
          //                                 width: 30,
          //                               ),
          //                               Row(
          //                                 mainAxisAlignment:
          //                                 MainAxisAlignment
          //                                     .end,
          //                                 children: [
          //                                   const Text(
          //                                     'MSRP ',
          //                                     style: TextStyle(
          //                                         color: Colors
          //                                             .grey),
          //                                   ),
          //                                   Text(
          //                                     style: const TextStyle(
          //                                         fontWeight:
          //                                         FontWeight
          //                                             .bold),
          //                                     '\$${e['price']}',
          //                                   ),
          //                                 ],
          //                               )
          //                             ],
          //                           )
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                 )),
          //           ],
          //         );
          //       }),
          // )
        ],
      ),
    ),
  );
}