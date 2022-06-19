import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/home_view.dart';
import 'package:flutter_application_2/views/listview_2.dart';
import 'package:flutter_application_2/views/new_profile.dart';

void main() => runApp(const Menu());

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ListView2(),
    Text('Index 2', style: optionStyle),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /*@override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const GetFireBase()));
    });
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Cars ',
            textAlign: TextAlign.center,
          )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: "Repair",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: "Services",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "User",
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
        //
      ),
    );
  }
}
