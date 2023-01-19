import 'package:flutter/material.dart';
Widget logoSection(title, subText) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            width: 300,
            // width: MediaQuery.of(context).size.width * 0.7,
          ),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
       Text(
        title.toString()
       ,
        style: const
        TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      ),
      const SizedBox(
        height: 10,
      ),
       Text(
        subText.toString(),
        style:const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
      )
    ],
  );
}