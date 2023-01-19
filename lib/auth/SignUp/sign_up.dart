import 'package:flutter/material.dart';
import 'package:uiorus/auth/Login/login.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/custom-page/auth-custom-Page/auth_custom_page.dart';
import 'package:uiorus/custom-page/custom_buttom.dart';
import 'package:uiorus/custom-widget/auth-custom-widget/auth_logo.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            logoSection('Sign Up', 'Create an Account, its free'),
            Form(
              key: _formKey,
              child: Column(
                children: [

                  //User Name form
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: userNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Name";
                        }else{
                          return null ;
                        }
                      },

                      decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Constants().primaryValueColor,),
                        hintText: 'User name',

                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),

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

                  //Phone form
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Phone number";
                        }else{
                          return null ;
                        }
                      },

                      decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Constants().primaryValueColor,),
                        hintText: 'Phone',

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
                        // errorStyle: const TextStyle(
                        //   color: Colors.cyan
                        // ),
                        // focusColor: Colors.transparent,

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

                  //Login Section
                  CustomButtom(
                    btnName: 'Sign Up',
                    bgColor:Constants().primaryValueColor,
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    callback: (){
                      if (_formKey.currentState!.validate()) {
                        print("object");
                        // _formKey.currentState.save();
                        // use the email provided here
                      }

                    },
                  ),
                  AuthFooter(
                      text: 'Does have an account? ',
                      buttonText:'Sign In' ,
                    callback: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                    },
                  ),
                  // ElevatedButton(onPressed: () {}, child:const Text('Login Now')),
                  // authFooterSection(context, 'Does have an account? ', 'Sign Up'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
