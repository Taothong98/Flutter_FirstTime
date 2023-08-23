import 'package:flutter/material.dart';
import 'package:lab7/screenfood/boxfood.dart';

class screenfood1 extends StatefulWidget {
  final Restaurant restaurant;

  screenfood1({required this.restaurant, Key? key}) : super(key: key);

  @override
  State<screenfood1> createState() => _screenfood1State();
}

class _screenfood1State extends State<screenfood1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ดำ.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.1),
                BlendMode.lighten,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // const SizedBox(height: 10),
                          Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(// ใช้ ClipRRect เพื่อกำหนดขอบโค้งรูป
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                widget.restaurant.Resimage, // ใส่รูปภาพใน Card
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.white.withOpacity(0.7),
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ListTile(
                              leading: Icon(Icons.home),
                              title: Text(widget.restaurant.Resname),
                              subtitle: Text(widget.restaurant.Resdetail),
                            ),
                          ),
                  
                          const SizedBox(height: 60.0),
                          Container(
                            child: Column(
                              children: [
                                for (var i = 0; i < dataFood.length; i++)
                                  Column(
                                    children: [
                                      FoodBox(restaurant: dataFood[i]),
                                      SizedBox(
                                          height:
                                              10.0), // เพิ่ม SizedBox ใน Column เพื่อเว้นช่องว่างระหว่าง FoodBox
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
