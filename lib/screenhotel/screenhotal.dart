// view.dart
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class screenhotal extends StatelessWidget {
  final String imgbackground;

  const screenhotal({Key? key})
      : imgbackground =
            'images/background3.jpg', // กำหนดค่าให้กับ imgbackground ที่นี่
        super(key: key);

  @override
  Widget build(BuildContext context) {

final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    //---------พารามิเตอร์ arguments = กำหนดเส้นทาง  Mapเปรียบเทียบ
    final Hotelname = arguments['Hotelname'];
    final Hoteldescription = arguments['Hoteldescription'];
    final Hotelimage = arguments['Hotelimage'];

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgbackground),
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

                          // Card(
                          //   // กำหนดขนาดของ Card
                          //   elevation: 6.0, // ความลึกของเงาใน Card
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(10.0), ), // กำหนดรูปร่างของ Card
                          //   child: Column(
                          //     children: [Image.asset(
                          //       Hotelimage ?? 'images/tour/หาดคุ้งวิมาน.jpg', 
                          //         fit: BoxFit.cover, 
                          //       ),
                          //       Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Text(Hotelname ?? 'No Name'), // เพิ่มเนื้อหาที่คุณต้องการแสดงใน Card
                          //       ),
                          //     ],
                          //   ),
                          // ),

                          Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            child: ClipRRect(                                 // ใช้ ClipRRect เพื่อกำหนดขอบโค้งรูป
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(Hotelimage ?? 'images/tour/หาดคุ้งวิมาน.jpg',      // ใส่รูปภาพใน Card
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white.withOpacity(0.7),
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            child: ListTile(
                              leading: Icon(Icons.email),
                              title: Text(Hotelname ?? 'No Name'),
                              subtitle: Text(Hoteldescription ?? 'No description'),
                            ),
                          ),
                          Card(
                            color: Colors.white.withOpacity(0.7),
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            child: ListTile(
                              leading: Icon(Icons.phone),
                              title: Text(Hotelname ?? 'No Name'),
                              subtitle: Text(Hoteldescription ?? 'No description'),
                            ),
                          ),

                          // Card(
                          //   child: ListTile(
                          //     leading: FaIcon(
                          //       FontAwesomeIcons.line,
                          //       color: Color.fromARGB(255, 25, 222, 32),
                          //     ),
                          //     title: Text('lineid: Threerapat'),
                          //     subtitle: Text('Chanthaburi Province, Thailand'),
                          //   ),
                          // ),
                          // Card(
                          //   child: ListTile(
                          //     leading: FaIcon(
                          //       FontAwesomeIcons.facebook,
                          //       color: Colors.blue,
                          //     ),
                          //     title: Text('https://www.facebook.com/threerapat/'),
                          //     subtitle: Text('Chanthaburi Province, Thailand'),
                          //   ),
                          // ),

                          const SizedBox(height: 20.0),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back),
                            label: const Text('back'),
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
