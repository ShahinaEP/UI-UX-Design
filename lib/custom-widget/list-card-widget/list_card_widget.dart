import 'package:flutter/material.dart';
Widget listOfCard(title,colors,iconColors) {
  return Container(
    color: colors,
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
              style:const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ...savedInventory.map((e) => Text(e['carModel'].toString())),
                        // Image.network('src'),
                        Container(
                          width: 250,
                          height: 100,
                          color: Colors.cyan,
                          child: Image.asset('images/car1.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            '2020 Genesis G70',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                        ),
                        const Text(
                          '3.3T',
                          style:
                          TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Dealer Review'),
                                Row(
                                  children:  [
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'MSRP ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '\$47,370',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}