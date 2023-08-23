import 'package:flutter/material.dart';
import 'screentour2.dart';
class screentour extends StatelessWidget {
  const screentour({super.key});
      
  @override
  Widget build(BuildContext context) {

final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    //---------พารามิเตอร์ arguments = กำหนดเส้นทาง  Mapเปรียบเทียบ
    final Tourname = arguments['Tourname'];
    final Tourdescription = arguments['Tourdescription'];
    final Tourimage = arguments['Tourimage'];



// ignore: no_leading_underscores_for_local_identifiers
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Color.fromARGB(255, 196, 44, 110);  // กำหนดสีตัวแปร color

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.red, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2, //ขนาดรูป
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(Tourimage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            titleSection((Tourname), 'text2'),

            buttonSection,
      
            textSection(Tourdescription),
      
      
      ElevatedButton(
      
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      shadowColor: Colors.greenAccent,
      elevation: 3,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0)),
      minimumSize: const Size(30, 30), //////// HERE
      ),
      child: const Text('<<'),
      
      onPressed: () { Navigator.pop(context);
      
      },
      ),
          ],
        ),
      ),
    );
  }
}
