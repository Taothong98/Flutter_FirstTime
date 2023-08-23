import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String name = args['name'];
    double price = args['price'];
    String image = args['image'];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tour/จุดชมวิวพระยืน.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.1),
                BlendMode.lighten,
              ),
            ),
          ),

        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(image), // ใช้ AssetImage สำหรับรูปภาพ
                  radius: 80.0,
                ),
              ),
              const Divider(
                height: 80,
                color: Colors.lightBlue,
              ),
              const SizedBox(height: 8),
              ListTile(
                leading: const Text("Name:"), // เพิ่ม const หน้า Text
                title: Text(name), // ใช้ตัวแปร name ในการแสดงผล
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(price.toString()), // แปลงเป็น String ก่อนแสดงผล
              ),
            ],
          ),
        ),
      ),
    );
  }
}