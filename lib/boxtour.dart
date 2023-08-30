//tourbox.dart
// import 'screen2.dart';
import 'package:flutter/material.dart';
import 'screentour.dart';


class TourBox extends StatelessWidget {
  final String Tourname;
  final String Tourdescription;
  final String Tourimage;

  const TourBox ({
    required this.Tourname,
    required this.Tourdescription,
    required this.Tourimage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screentour(),
            settings: RouteSettings(
              arguments: {
                'Tourname': Tourname,
                'Tourdescription': Tourdescription,
                'Tourimage': Tourimage,

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
            image: AssetImage(Tourimage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0),
              BlendMode.lighten,
              //--------------------------------------^รูปในContainer-----------------------
            ),
          ),
        ),
        height: 100.0,                                   //ขนาดของกล่อง
        padding: const EdgeInsets.all(8.0),             //ขอบมล
        child: Row(                                    //คอลั่มแนวนอน
          crossAxisAlignment: CrossAxisAlignment.end, //ตำแหน่งล่าง
          children: [
            Text(
              Tourname, //lefttext
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

 List<TourBox> dataTour = List.generate(
    4,
    (index) => TourBox(
      Tourname: index == 0 ? "อ่าวคุ้งกระเบน" 
      : index == 1 ? "จุดชมวิวพระยืน"
      : index == 2 ? "จุดชมวิวหาดเก็บตะวัน" 
      : "หาดคุ้งวิมาน",
      Tourdescription: index == 0 ? "อ่าวคุ้งกระเบน หรือชื่อเรียกเต็มๆ คือ ศูนย์ศึกษาการพัฒนาอ่าวคุ้งกระเบนอันเนื่องมาจากพระราชดำริ อยู่ที่ ตำบลคลองขุด อำเภอท่าใหม่ จังหวัดจันทบุรี ก่อตั้งขึ้นตามพระราชดำริของในหลวงรัชกาลที่9 ว่าให้หาพื้นที่ที่เหมาะสมจัดทำโครงการพัฒนาด้านอาชีพการประมงและการเกษตรในพื้นที่ชายฝั่งทะเลจันทบุรี เพื่อดำเนินงานด้านการอนุรักษ์ การจัดการทรัพยากรชายฝั่ง ส่งเสริมและพัฒนาอาชีพราษฎรของศูนย์ฯ คุ้งกระเบนแห่งนี้" 
      : index == 1 ? "จุดชมวิวพระยืน ตั้งอยู่ที่ทะเลหาดคุ้งวิมาน ตำบลสนามไชย อ.นายายอาม จ.จันทบุรี เป็นอีกหนึ่งจุดชมวิวที่บรรยากาศดี มองเห็นทัศนียภาพสวยๆ ของหาดคุ้งวิมาน เป็นอีกหนึ่งจุดที่เหมาะสำหรับการมานั่งพักผ่อน ถ่ายรูปทะเลที่กว้างไกลสุดลูกหูลูกตา และชมพระอาทิตย์ตก" 
      : index == 2 ? "จุดชมวิวหาดเก็บตะวัน เป็นจุดชมวิวอีกแห่งหนึ่งเลียบถนนชล-จันท์ หรือ ถนนเฉลิมบูรพาชลทิตที่ได้รับความนิยม และมีชื่อเสียงรองลงมาจากจุดชมวิวเนินนางพญา ที่มาของชื่อ หาดเก็บตะวัน เพราะจุดนี้เป็นจุดที่สามารถมองเห็นพระอาทิตย์ตกได้อย่างสวยงามไร้สิ่งบดบัง เมื่อมองออกไปจะเห็นเพียงความงดงามของแผ่นน้ำกับแผ่นฟ้าและแสงอาทิตย์ที่สาดส่องกระทบลงมาเท่านั้น ในวันที่อากาศเป็นใจนักท่องเที่ยวจะเห็นความสวยงามของท้องฟ้าและทะเลสีครามกว้างไกลสุดลูกหูลูกตาได้จากจุดชมวิวแห่งนี้" 
      : "หาดคุ้งวิมาน ตั้งอยู่ที่ ตำบลสนามไชย อำเภอนายายอาม จังหวัดจันทบุรี เป็นชายหาดที่มีชื่อเสียงหาดหนึ่งของจังหวัด ค่อนข้างเงียบสงบและมีวิวทิวทัศน์ที่สวยงาม ริมหาดจะมีร้านค้าให้บริการ ทั้งอาหารเครื่องดื่มและห้องอาบน้ำจืด บรรยากาศจะเหมาะแก่การพักผ่อน บริเวณรอบๆ ยังมีโรงแรมให้สวยๆ ให้เลือกพักกันอีกด้วยค่ะ",
      Tourimage: index == 0 ? 'images/tour/อ่าวคุ้งกระเบน.jpg'
      : index == 1 ? 'images/tour/จุดชมวิวพระยืน.jpg' 
      : index == 2 ? 'images/tour/จุดชมวิวหาดเก็บตะวัน.jpg'
      : 'images/tour/หาดคุ้งวิมาน.jpg',
    ),
  );