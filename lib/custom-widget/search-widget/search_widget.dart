import 'package:flutter/material.dart';

import '../../pages/home/search.dart';
Widget search_widget(Size size, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: size.width*0.6,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
            // shape:BoxShape.circle
          ),
          child:  TextField(
            onTap: (){
              showSearch(context: context,delegate: MySearchDelegate(),);
            },
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  Text('Search Products',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.grey,
                  ),
                ],
              ),
              // icon: Icon(Icons.search),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),

          ),
        ),

        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.notifications_active ,size: 30,),
            ),
            Positioned(
              right: 0,
              top: -3,
              child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.cyan.withOpacity(1),
                    shape: BoxShape.circle,
                  ),
                  child:const Center(child:  Text('2', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))
              ),
            )
          ],
        )
      ],
    ),
  );
}