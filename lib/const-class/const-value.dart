import 'package:flutter/material.dart';

class Constants{
  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  Color primaryValueColor = const Color(0xFF0071a8);
  Color primary2ndColor = const Color(0xFF14bbe2);
  Color color1 = Colors.grey.withOpacity(0.3);
  Color color2 = Colors.blueGrey.withOpacity(0.3);
  Color iconColors = Colors.orange;
  Color iconColors2 = Colors.deepOrange;
  TextStyle optionStyle = const
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
}