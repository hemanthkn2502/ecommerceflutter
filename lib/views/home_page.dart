import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'item_page.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  String text='Add more items';

  @override
  Widget build(BuildContext context) {

   String value1 = 'Item';
   String value2 = 'Cart';
    return  Scaffold(
    appBar: AppBar(
    title: const Center(
    child: Text('Home Page'),
    ),
    backgroundColor: Colors.green,
    ),
    body: Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    GestureDetector(
    onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemPage()));
    },
    child: homePageView(value1),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 25),
      child: GestureDetector(
       onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(item:text)));
   },
    child: homePageView(value2),
     ),
     ),
      ],
      ),
       ),
       ),
  );
  }

homePageView(String text) {
return Container(
height: 80,
width: 150,
decoration: BoxDecoration(
color: Colors.green,
borderRadius: BorderRadius.circular(10),
),
child: Center(
child: Text(
text,
style: const TextStyle(fontSize: 25),
)),
);
}
}
