import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/get_firebase.dart';
import 'package:flutter_application_2/views/listview_3.dart';

void main() => runApp(Menu());

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const GetFireBase()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: const Text(
            "Home ",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 50, 152, 203)),
          )),
    );
  }
}
