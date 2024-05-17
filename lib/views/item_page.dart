import 'package:ecommerce/views/item_description.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  late String item;
  late String description;
  late String image;

  List<String> descriptions = [
    'An apple is a round, edible fruit that comes from an apple tree. Apple trees are grown all over the world and are the most widely grown species in the genus Malus.',
    'An orange is a fruit that belongs to the citrus family Rutaceae. The word "orange" comes from the French word "pomme dorenge".Oranges are a hybrid between pomelo and mandarin. The two parents of an orange must be a mandarin and a pomelo. Oranges can be sweet or bitter, and are known for being high in vitamin C.',
    'Guava is a tropical fruit thats native to Mexico, Central America, the Caribbean, and northern South America. Its a member of the myrtle family and is also known as the lemon guava or apple guava.',
    'Grapes are a type of fruit that grow in clusters on woody vines. They are botanically classified as berries and are members of the botanical family Vitaceae. Grapes can be eaten raw, used to make jams, jellies, wines, and raisins, or processed into dried fruits called raisins.',
    'Watermelon is a fruit that is part of the cucurbitaceae plant family of gourds. It is related to the cucumber, squash, and pumpkin. The scientific name for watermelon is Citrullus lanatus.',
  ];
  List<String> items = ['Apple', 'Orange', 'Guava', 'Grapes', 'Watermelon'];
  List<String> images = [
    'assets/Apple.jpg',
    'assets/Orange.jpg',
    'assets/Guava.jpg',
    'assets/Grapes.jpg',
    'assets/Watermelon.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('Items')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemPageView('Apple', 0),
              itemPageView('Orange', 1),
              itemPageView('Guava', 2),
              itemPageView('Grapes', 3),
              itemPageView('watermelon', 4),

            ],
          ),
        ),
      ),
    );
  }

  itemPageView(String text,int ind)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () {
          item = items[ind];
          description = descriptions[ind];
          image=images[ind];
         Navigator.push(context, MaterialPageRoute(builder: (context)=>
         ItemDescription(item:item,description: description,image:image,)
         ));
        },
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10)),
          child:  Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }



}
