import 'package:flutter/material.dart';
import 'package:lab7/screenfood/boxfood.dart';

class screenfood2 extends StatefulWidget {
  final Restaurant restaurant;

  screenfood2({required this.restaurant, Key? key}) : super(key: key);

  @override
  State<screenfood2> createState() => _screenfood2State();
}

class _screenfood2State extends State<screenfood2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   title: Text(widget.restaurant.Resname),
      // ),
   body: ListView(
          children: [
            Column(
              children: widget.restaurant.meats.map((meat) => menuTemplate(meat)).toList(),
            )
          ],
        ));
  }
}
Widget menuTemplate(Meat meat) {
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
                image: AssetImage(meat.Meatimage), // 
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            meat.Meatname, //
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.blue[900],
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            meat.Meatprice, // 
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



     