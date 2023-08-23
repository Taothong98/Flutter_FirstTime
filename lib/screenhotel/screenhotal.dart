import 'package:flutter/material.dart';
class screenhotal extends StatelessWidget {
  final String imgbackground;

  const screenhotal({Key? key})
      : imgbackground =
            'images/ดำ.png', // กำหนดค่าให้กับ imgbackground ที่นี่
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
                          const SizedBox(height: 10),
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
                              leading: Icon(Icons.home),
                              title: Text(Hotelname ?? 'No Name'),
                              // subtitle: Text(Hoteldescription ?? 'No description'),
                            ),
                          ),
                          Card(
                            color: Colors.white.withOpacity(0.7),
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            child: ListTile(
                              leading: Icon(Icons.phone),
                              title: Text('ติดต่อ'),
                              subtitle: Text(Hoteldescription ?? 'No description'),
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
