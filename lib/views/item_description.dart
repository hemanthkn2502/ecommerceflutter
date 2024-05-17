import 'package:ecommerce/views/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/views/item_page.dart';

class ItemDescription extends StatefulWidget {
  final String item;
  final String description;
  final String image;

  const ItemDescription(
      {super.key,
      required this.item,
      required this.description,
      required this.image,});

  @override
  State<ItemDescription> createState() => _ItemDescriptionState();
}

class _ItemDescriptionState extends State<ItemDescription> {
  @override
  Widget build(BuildContext context) {
    String item1=widget.item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('Item Description')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              widget.item,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:
                  Container(height: 200, width: 500, child: Image.asset(widget.image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20.0, right: 20),
              child: Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CartPage(
                                item: item1,

                              ),));
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('ADD TO CART',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
