import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
       // title: const Text("About Me"),
      //  backgroundColor: Colors.deepOrange,
     // ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Center(
              child: CircleAvatar(          //CircleAvatar ทำให้รูปเป็นวงกลม
                backgroundImage: NetworkImage('https://mercular.s3.ap-southeast-1.amazonaws.com/images/products/2022/04/items-for-cat-missing-view.jpg'),
                //backgroundImage: AssetImage('images/01.png'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 80,
              color: Colors.lightBlue,
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Text("Name:"),
              title: Text('Threerapat Sridee'),
              subtitle: Text('CNT'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('6414921010@rbru.ac.th'),
              subtitle: Text('computer network , RBRU'),
            ),
            
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('+66 0842-0857-11'),
                subtitle: Text('Chanthaburi Province, Thailand'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
