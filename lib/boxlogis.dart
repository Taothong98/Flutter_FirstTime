// import 'Screen2.dart';
import 'package:flutter/material.dart';
import 'screenlistRider.dart';

class LogisBox extends StatelessWidget {
  final String Logisname;
  final String Logisdescription;
  final String Logisimage;

  const LogisBox({
    required this.Logisname,
    required this.Logisdescription,
    required this.Logisimage,
  });
    @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => listRider(),
            settings: RouteSettings(
              arguments: {
                'FoodDescription': Logisdescription,
                'FoodDmage': Logisimage,
                'FoodName': Logisname,
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
            image: AssetImage(Logisimage),
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
          crossAxisAlignment: CrossAxisAlignment.end, //ตำแหน่งล่าง
          children: [
            Text(
              Logisname, //lefttext
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

List<LogisBox> dataLogis = List.generate(
  1,
  (index) => LogisBox(
    Logisname: index == 0 ? "เช่ายานพาหนะ" : "", // ต้องมีค่าให้ถูกต้อง
    Logisdescription: index == 0 ? "รายละเอียดของเช่ายานพาหนะ" : "", // ต้องมีค่าให้ถูกต้อง
    Logisimage: index == 0 ? 'images/logis/เช่ายานพาหนะ.jpg' : '', // ต้องมีค่าให้ถูกต้อง
  ),
);