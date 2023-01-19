import 'package:flutter/material.dart';
import 'package:uiorus/auth/SignUp/sign_up.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/custom-page/auth-custom-Page/auth_custom_page.dart';
import 'package:uiorus/custom-page/custom_buttom.dart';
import 'package:uiorus/custom-widget/auth-custom-widget/auth_logo.dart';
import 'package:uiorus/pages/home/homepage.dart';

import '../../navbar/bottom_nav.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(
              height: MediaQuery.of(context).size.height*0.15,
            ),
            logoSection("Login Your Account",'Welcome back! Please Login to Your Account'),
            const SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [

                  //E-mail form
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Email";
                        }else if (value!.isNotEmpty){
                          if((RegExp(Constants().pattern)).hasMatch(value))
                            {
                             return null;
                            }
                          else{
                            return 'Invalid Email';
                          }
                        }else{
                          return null ;
                        }
                      },

                      decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined, color: Constants().primaryValueColor,),
                          hintText: 'E-mail',

                        border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              ),
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),

                  //Password form
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(

                      obscureText: isObscure,
                      cursorColor: Colors.black,
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Password";
                        } else {
                          return null;
                        }
                      },

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,  color: Constants().primaryValueColor,),
                        // icon: Icon(Icons.account_circle),
                          hintText: 'Password',

                        border: const OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          iconSize: 15,
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),

                  // Forget Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 12.0, bottom: 20.0),
                         child: Text('Forget Password',
                           style: TextStyle(
                               color: Constants().primaryValueColor,
                               fontSize: 16,
                               fontWeight: FontWeight.w600

                           ),
                         ),
                       ),
                    ],
                  ),

                  //Login Section
                  CustomButtom(
                    btnName: 'Login Now',
                    bgColor:Constants().primaryValueColor,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    callback: (){
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavPage()));
                        // _formKey.currentState.save();
                        // use the email provided here
                      }

                    },
                  ),
                  AuthFooter(
                    text: 'Does not have an account? ',
                    buttonText:'Sign Up' ,
                    callback: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
                    },
                  ),
                  // ElevatedButton(onPressed: () {}, child:const Text('Login Now')),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
