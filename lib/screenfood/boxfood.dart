import 'package:flutter/material.dart';
import 'screenmainfood.dart';

class Meat {
  String Meatname;
  String Meatdetail;
  String Meatprice;
  String Meatimage;
  Meat({required this.Meatname,required this.Meatdetail,required this.Meatprice, required this.Meatimage});
}
class Dessert {
  String Dessertname;
  String Dessertdetail;
  String Dessertprice;
  String Dessertimage;
  Dessert({required this.Dessertname,required this.Dessertdetail,required this.Dessertprice, required this.Dessertimage});
}
class Restaurant {
  String Resname;
  String Resimage;
  String Resdetail;
  List<Meat> meats;
  List<Dessert> desserts;
  Restaurant({required this.Resname, required this.Resimage, required this.Resdetail, required this.meats, required this.desserts});
}

Restaurant restaurant1 = Restaurant(
  Resname: 'ร้านทะเลบุรี หาดคุ้งวิมาน',
  Resimage: 'images/res/ร้านทะเลบุรีหาดคุ้งวิมาน3.jpg',
  Resdetail: 'ที่อยู่ ตำบล สนามไชย อำเภอนายายอาม จันทบุรี 22170 โทร 086 842 3226',
        meats: [ 
    Meat(Meatname: 'ต้มยำ', Meatdetail: ' 640 kal',Meatprice: 'ราคา 200 บาท',Meatimage: 'images/meat/ต้มยำ.png',),
    Meat(Meatname: 'เม็ดมะม่วงสามรส', Meatdetail: '240 kal',Meatprice: 'ราคา 150 บาท',Meatimage: 'images/meat/เม็ดมะม่วงสามรส.png',),
    Meat(Meatname: 'ยำแมงกะพรุน', Meatdetail: '105  kal',Meatprice: 'ราคา 150 บาท',Meatimage: 'images/meat/ยำแมงกะพรุน.png',),
    Meat(Meatname: 'หอยแมลงภู่ลวกจิ๋ม', Meatdetail: '172 kal',Meatprice: 'ราคา 150 บาท',Meatimage: 'images/meat/หอยแมลงภู่ลวกจิ๋ม.png',),
  ],
  desserts: [
    Dessert(Dessertname: 'เบียร์ช้าง', Dessertdetail: '150kal',Dessertprice: 'ราคา 70 บาท',Dessertimage: 'images/dessert/เบียร์ช้าง.png',),
    Dessert(Dessertname: 'น้ำเป๊ปซี่', Dessertdetail: '145kal',Dessertprice: 'ราคา 40 บาท',Dessertimage: 'images/dessert/น้ำเป๊ปซี่.png',),
    Dessert(Dessertname: 'น้ำเปล่า', Dessertdetail: '0kal',Dessertprice: 'ราคา 30 บาท',Dessertimage: 'images/dessert/น้ำเปล่า.png',),
    Dessert(Dessertname: 'หงษ์ทอง', Dessertdetail: '1,350 kal',Dessertprice: 'ราคา 150 -350 บาท',Dessertimage: 'images/dessert/หงษ์ทอง.png',),
    Dessert(Dessertname: 'รีเจนซี่', Dessertdetail: '1,470 kal',Dessertprice: 'ราคา 450-750 บาท',Dessertimage: 'images/dessert/รีเจนซี่.png',),
    
  ],
);

Restaurant restaurant2 = Restaurant(
  Resname: 'ครัวเจ้ญาซีฟู้ด หาดคุ้งวิมาน',
  Resimage: 'images/res/ครัวเจ้ญาซีฟู้ดหาดคุ้งวิมาน3.jpg',
  Resdetail: 'ที่อยู่ ตำบล สนามไชย อำเภอนายายอาม จันทบุรี 22170 โทร 086 842 3226',
     meats: [ 
    Meat(Meatname: 'ต้มยำรวมมิตร', Meatdetail: '185.2 kal',Meatprice: 'ราคา 200 บาท',Meatimage: 'images/meat/ต้มยำรวมมิตร.png',),
    Meat(Meatname: 'แกงส้มปลากระบอก', Meatdetail: '160  kal',Meatprice: 'ราคา 200 บาท',Meatimage: 'images/meat/แกงส้มปลากระบอก.png',),
    Meat(Meatname: 'เอ็นหอยผัดฉ่า', Meatdetail: '170  kal',Meatprice: 'ราคา 200  บาท',Meatimage: 'images/meat/ยำเอ็นหอย.png',),
  ],
  desserts: [
    Dessert(Dessertname: 'เบียร์ช้าง', Dessertdetail: '150 kal',Dessertprice: 'ราคา 70 บาท',Dessertimage: 'images/dessert/เบียร์ช้าง.png',),
    Dessert(Dessertname: 'น้ำเป๊ปซี่', Dessertdetail: '145 kal',Dessertprice: 'ราคา 40 บาท',Dessertimage: 'images/dessert/น้ำเป๊ปซี่.png',),
    Dessert(Dessertname: 'น้ำเปล่า', Dessertdetail: '0 kal',Dessertprice: 'ราคา 30 บาท',Dessertimage: 'images/dessert/น้ำเปล่า.png',),

  ],
);

Restaurant restaurant3 = Restaurant(
  Resname: 'กิ๊ฟ ริมเลซีฟู้ด',
  Resimage: 'images/res/กิ๊ฟริมเลซีฟู้ด1.jpg',
  Resdetail: 'ที่อยู่:  ตำบล สนามไชย อำเภอนายายอาม จันทบุรี 22170 โทร 061 592 3572',
     meats: [ 
    Meat(Meatname: 'กรรเชียงปูผัดผงกะหรี่ ', Meatdetail: '746 kal',Meatprice: 'ราคา 200 บาท',Meatimage: 'images/meat/กรรเชียงปูผัดผงกะหรี่.png',),
    Meat(Meatname: 'หมึกไข่นึ่งมะนาว', Meatdetail: '100 kal',Meatprice: '150-200 บาท',Meatimage: 'images/meat/หมึกไข่นึ่งมะนาว.png',),
    Meat(Meatname: 'ปลากระพงทอดราดน้ำปลา', Meatdetail: '393 kal',Meatprice: 'ราคา 350 บาท',Meatimage: 'images/meat/ปลากระพงทอดราดน้ำปลา.png',),
    Meat(Meatname: 'หมึกผัดไข่เค็ม', Meatdetail: ' 284 kal',Meatprice: 'ราคา 150 บาท',Meatimage: 'images/meat/หมึกผัดไข่เค็ม.png',),
  ],
  desserts: [
    Dessert(Dessertname: 'สปาย', Dessertdetail: ' 75 kal',Dessertprice: '40 บาท',Dessertimage: 'images/dessert/สปาย.png',),
    Dessert(Dessertname: 'น้ำเป๊ปซี่', Dessertdetail: '145 kal',Dessertprice: 'ราคา 40 บาท',Dessertimage: 'images/dessert/น้ำเป๊ปซี่.png',),
    Dessert(Dessertname: 'น้ำเปล่า', Dessertdetail: '0 kal',Dessertprice: 'ราคา 30 บาท',Dessertimage: 'images/dessert/น้ำเปล่า.png',),

  ],
);


List<Restaurant> dataFood = [
  restaurant1,
  restaurant2,
  restaurant3,
];


class FoodBox extends StatelessWidget {
  final Restaurant restaurant;

  FoodBox({required this.restaurant});

  
    @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => screenmainfood(restaurant: restaurant),
          ),
        );
      },
      
      //-----------------------------------------------^onTapส่วนการกระทำ------------------
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,  // สีContainer
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(restaurant.Resimage),
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
            Text(restaurant.Resname, 
              style: TextStyle(
                fontSize: 25,
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Text(""),
            ),
          ],
          //--------------------------------------------^ข้อความในContainer---------------------
        ),
      ),
    );
  }
}

