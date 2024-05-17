import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../variables.dart';
import 'item_page.dart';

class CartPage extends StatefulWidget {
  String item;

    CartPage({super.key,required this.item});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {

    setState(() {
      cart.add(widget.item);
    });

    return  Scaffold(
      appBar: AppBar(

        title:const Center(
          child: Text(
              'Cart Page'
          ),


        ),
        backgroundColor: Colors.green,
      ),
      body:
        Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: cart.length,
                itemBuilder:( BuildContext context, int index){
                  return cartPageView(80, 150, cart[index], 25);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0,bottom: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemPage()));

                },
                child: cartPageView(100, 300, 'ADD MORE ITEMS', 30),
              ),
            ),
          ],
        )
    );



  }
  cartPageView(double height,double width,String text,double fontSize)
  {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)),
        child:  Center(
          child: Text(
            text,
            style:  TextStyle(
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
  }

