//tourbox.dart
import 'package:flutter/material.dart';
import 'screenhotal.dart';


class HotelBox extends StatelessWidget {
  final String Hotelname;
  final String Hoteldescription;
  final String Hotelimage;

  const HotelBox ({
    required this.Hotelname,
    required this.Hoteldescription,
    required this.Hotelimage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (build) => screenhotal(),
            settings: RouteSettings(
              arguments: {
                'Hoteldescription': Hoteldescription,
                'Hotelimage': Hotelimage,
                'Hotelname': Hotelname,
              },
            ),
          ),
        );
      },
      //-----------------------------------------------^onTapส่วนการกระทำ------------------
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,  // สีContainer
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(Hotelimage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0),
              BlendMode.lighten,
              //--------------------------------------^รูปในContainer-----------------------
            ),
          ),
        ),
        height: 120.0,                                   //ขนาดของกล่อง
        padding: const EdgeInsets.all(8.0),             //ขอบมล
        child: Row(                                    //คอลั่มแนวนอน
          crossAxisAlignment: CrossAxisAlignment.end, //ตำแหน่งล่างs
          children: [
            Text(
              Hotelname, //lefttext
              style: TextStyle(
                fontSize: 25,
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Text(
                "",//righttext
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
          //--------------------------------------------^ข้อความในContainer---------------------
        ),
      ),
    );
  }
}
 List<HotelBox> dataHotel = List.generate(
    3,
    (index) => HotelBox(
      Hotelname: index == 0 ? "เป๊กกี้ โคฟ รีสอร์ท " 
      : index == 1 ? "ฟ้าใส รีสอร์ต แอนด์ สปา "
      : "วนาวารีรีสอร์ท ",
      Hoteldescription: index == 0 ? "หาดคุ้งวิมาน 44 หมู่7 ต.สนามไชย อ.นายายอาม จันทบุรี, หาดคุ้งวิมาน"
      : index == 1 ? "Chaloem Burapha Chonlathit Road, หาดคุ้งวิมาน, จันทบุรี" 
      : "22 หมู่ 7 ถ.เฉลิมบูรพาชลทิต, หาดคุ้งวิมาน, จันทบุรี",
      Hotelimage: index == 0 ? 'images/hotel/ฟ้าใส.jpg'
      : index == 1 ? 'images/hotel/เป๊กกี้.jpg'
      : 'images/hotel/วนาวารี.jpg',
    ),
  );