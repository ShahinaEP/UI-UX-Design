import 'package:flutter/material.dart';

class CustonOutlineButton extends StatelessWidget {
  const CustonOutlineButton({Key? key,required this.btnName, this.iconName,required this.sideColors, this.bgColor, this.textStyle, this.callback}) : super(key: key);
  final String btnName;
  final Icon? iconName;
  final Color sideColors;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;
  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
        onPressed: (){
          callback!();
        },

        style: OutlinedButton.styleFrom(
          backgroundColor: bgColor,
          side: BorderSide(color: sideColors, width: 2),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),

        ),
        child:  Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(btnName, style: textStyle,),
        )
    );
  }
}
