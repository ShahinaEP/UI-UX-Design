import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({Key? key, required this.btnName, this.iconName, this.bgColor, this.textStyle, this.callback}) : super(key: key);
  final String btnName;
  final Icon? iconName;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: iconName!= null? Row(
          children: [
            iconName!,
            Text(btnName)
          ]
      ): Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(btnName, style: textStyle,),
              ),
            ],
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor
      ),
    );
  }
}