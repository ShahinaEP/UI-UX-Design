import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';
import 'package:uiorus/pages/home/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
    // This trailing comma makes auto-formatting nicer for build methods.
      child: Column(
        children: [
          Padding(
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
          )
        ],
      ),
    );
  }
}

