import 'package:flutter/material.dart';
import 'package:lab7/main.dart';
import 'boxfood.dart';
import 'foodbody3.dart';
import 'foodbody2.dart';
import 'foodbody1.dart';

class screenmainfood extends StatefulWidget {
  final Restaurant restaurant;

  screenmainfood({required this.restaurant, Key? key}) : super(key: key);

  @override
  State<screenmainfood> createState() => _screenmainfood();
}

class _screenmainfood extends State<screenmainfood> {
  int _selectedIndex = 0;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context)
                    // .popUntil((route) => route.isFirst), //pop จนเหลือแค่หน้าแรก
                    .pop(false),
                child: new Text('No'),
              ),
              TextButton(
                    onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                }, //<-- SEE HERE
                    
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          // leading: BackButton(onPressed:() => Navigator.of(context).popUntil((route) => route.isFirst)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red,
          title: Text(widget.restaurant.Resname),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent, // กำหนดให้พื้นหลังโปร่งใส
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(IconData(0xe3c9, fontFamily: 'MaterialIcons')),
              label: 'Restaurant',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconData(0xe390, fontFamily: 'MaterialIcons')),
              label: 'Meat',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconData(0xe391, fontFamily: 'MaterialIcons')),
              label: 'Drink',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  List<Widget> get _pages {
    return [
      screenfood1(restaurant: widget.restaurant),
      screenfood2(restaurant: widget.restaurant),
      screenfood3(
          restaurant: widget
              .restaurant), // ให้นำ widget.restaurant มาใช้ในส่วนของ body ของ screenfood
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
