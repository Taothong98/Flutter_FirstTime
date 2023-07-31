import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurant.Resname),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }

  List<Widget> get _pages {
    return [
      screenfood1(restaurant: widget.restaurant),
      screenfood2(restaurant: widget.restaurant),
      screenfood3(restaurant: widget.restaurant), // ให้นำ widget.restaurant มาใช้ในส่วนของ body ของ screenfood
      
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}