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
              image: AssetImage('images/tour/หาดคุ้งวิมาน.jpg'),
              fit: BoxFit.cover,
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
                          const SizedBox(height: 10),

                          Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            child: ClipRRect(              // ใช้ ClipRRect เพื่อกำหนดขอบโค้งรูป
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(widget.restaurant.Resimage,      // ใส่รูปภาพใน Card
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white.withOpacity(0.7),
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            child: ListTile(
                              leading: Icon(Icons.phone),
                              title: Text(widget.restaurant.Resname),
                              subtitle: Text(widget.restaurant.Resdetail),
                            ),
                          ),
                          Card(
                            color: Colors.white.withOpacity(0.7),
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            child: ListTile(
                              leading: Icon(Icons.phone),
                              title: Text(widget.restaurant.Resname),
                              subtitle: Text(widget.restaurant.Resdetail),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          // ElevatedButton.icon(
                          //   onPressed: () {
                          //     Navigator.pop(context);
                          //   },
                          //   icon: const Icon(Icons.arrow_back),
                          //   label: const Text('back'),
                          // ),
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
