//main.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'screentour/boxtour.dart';
import 'screenfood/boxfood.dart';
import 'screenhotel/boxhotel.dart';
import 'screenlogis/boxlogis.dart';
// import 'Screen2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  final String title = 'Chanthaburi';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
          padding: const EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(
                  height: 10,),


                                  Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      reverse: true, // กำหนดให้เลื่อนในทิศทางที่ตรงกันข้าม
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(milliseconds: 4500),
                      aspectRatio: 20 /
                          7, // กำหนดอัตราส่วนกว้างต่ำสุด/สูงสุดของรูปใน TourBox
                      viewportFraction: 0.97, // กำหนดส่วนที่จะแสดงของ TourBox
                    ),
                    items: dataFood
                          .map(
                            (restaurant) => FoodBox(
                            restaurant: restaurant,
                            )).toList(),
                    ),
                  ),
          
                SizedBox(
                  height: 10,),




                  Container(
                    //   height: 300, // กำหนดขนาดของ CarouselSlider
                    child: CarouselSlider(
                      options: CarouselOptions(
                        
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(milliseconds: 3000),
                        autoPlayCurve: Curves.fastOutSlowIn, // กำหนด pattern ในการเลือนเป็นแบบ fastOutSlowIn
                        aspectRatio: 20 /
                            7, // กำหนดอัตราส่วนกว้างต่ำสุด/สูงสุดของรูปใน TourBox
                        viewportFraction: 0.97, // กำหนดส่วนที่จะแสดงของ TourBox
                      ),
                      items: dataTour
                          .map((Tour11) => TourBox(
                                Tourname: Tour11.Tourname,
                                Tourdescription: Tour11.Tourdescription,
                                Tourimage: Tour11.Tourimage,
                              ))
                          .toList(),
                    ),
                  ),
                
                SizedBox(
                  height: 10,),
          
          
                Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(milliseconds: 6000),
                        autoPlayCurve: Curves.fastOutSlowIn, // กำหนด pattern ในการเลือนเป็นแบบ fastOutSlowIn
                        aspectRatio: 20 /7, // กำหนดอัตราส่วนกว้างต่ำสุด/สูงสุดของรูปใน TourBox
                        viewportFraction: 0.97, // กำหนดส่วนที่จะแสดงของ TourBox
                      ),
                      items: dataHotel
                          .map((Hotel11) => HotelBox(
                                Hotelname: Hotel11.Hotelname,
                                Hoteldescription: Hotel11.Hoteldescription,
                                Hotelimage: Hotel11.Hotelimage,
                              ))
                          .toList(),
                    ),
                  ),
            
                SizedBox(
                  height: 10,),

                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(milliseconds: 6000),
                        autoPlayCurve: Curves.fastOutSlowIn, // กำหนด pattern ในการเลือนเป็นแบบ fastOutSlowIn
                        aspectRatio: 20 /5, // กำหนดอัตราส่วนกว้างต่ำสุด/สูงสุดของรูปใน TourBox
                        viewportFraction: 0.97, // กำหนดส่วนที่จะแสดงของ TourBox
                      ),
                      items: dataLogis
                          .map((Logis11) => LogisBox(
                                Logisname: Logis11.Logisname,
                                Logisdescription: Logis11.Logisdescription,
                                Logisimage: Logis11.Logisimage,
                              ))
                          .toList(),
                    ),
                  ),
            
                SizedBox(
                  height: 1210,),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
