import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';
// class AuthFooter extends StatefulWidget {
//   final String text;
//   final String buttonText;
//   const AuthFooter({Key? key,required this.text, required this.buttonText}) : super(key: key);
//
//   @override
//   State<AuthFooter> createState() => _AuthFooterState();
// }
//
// class _AuthFooterState extends State<AuthFooter> {
//   // final String text;
//   // final String buttonText;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.all(10),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               RichText(
//                   text:  TextSpan(
//                     text: text,
//                     style: const TextStyle(color: Colors.black,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18),
//                     children:const [
//
//                       // TextButton(
//
//                       // text: ' Sign up',
//                       // style: TextStyle(
//                       //     color:Constants().primaryValueColor,
//                       //     fontWeight: FontWeight.bold,
//                       //     fontSize: 18),
//                       // recognizer: GestureRecognizer()
//                       // recognizer: TapGestureRecognizer()
//                       //   ..onTap = () {
//                       //     // navigate to desired screen
//                       //   }
//                       // )
//                     ],
//                   )),
//               InkWell(
//                   onTap: (){
//                     // Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
//                   },
//                   child: Text(buttonText,
//                     style: TextStyle(
//                         color:Constants().primaryValueColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18),
//                   )
//               )
//             ],
//           ),
//         ));
//   }
// }

class AuthFooter extends StatelessWidget {
  final String text;
  final String buttonText;
  final VoidCallback callback;
  const AuthFooter({Key? key,required this.text, required this.buttonText, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text:  TextSpan(
                    text: text,
                    style: const TextStyle(color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                    children:const [

                      // TextButton(

                      // text: ' Sign up',
                      // style: TextStyle(
                      //     color:Constants().primaryValueColor,
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 18),
                      // recognizer: GestureRecognizer()
                      // recognizer: TapGestureRecognizer()
                      //   ..onTap = () {
                      //     // navigate to desired screen
                      //   }
                      // )
                    ],
                  )),
              InkWell(
                  onTap: (){
                    callback();
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
                  },
                  child: Text(buttonText,
                    style: TextStyle(
                        color:Constants().primaryValueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
              )
            ],
          ),
        ));
  }
}
