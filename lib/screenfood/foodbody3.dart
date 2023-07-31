import 'package:flutter/material.dart';
import 'package:lab7/screenfood/boxfood.dart';

class screenfood3 extends StatefulWidget {
  final Restaurant restaurant;

  screenfood3({required this.restaurant, Key? key}) : super(key: key);

  @override
  State<screenfood3> createState() => _screenfood3State();
}

class _screenfood3State extends State<screenfood3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

   body: ListView(
          children: [
            Column(
              children: widget.restaurant.desserts.map((dessert) => menuTemplate(dessert)).toList(),
            )
          ],
        ));
  }
}

Widget menuTemplate(Dessert dessert) {
  return Card(
    margin: const EdgeInsets.all(10.0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(dessert.Dessertimage), // 
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            dessert.Dessertname, //
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.blue[900],
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            dessert.Dessertprice, // 
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.indigoAccent[700],
            ),
          ),
        ],
      ),
    ),
  );
}
