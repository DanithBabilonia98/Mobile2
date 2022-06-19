import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 187, 225, 238),
            Color.fromARGB(255, 4, 95, 98)
          ])),
      child: const Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
          backgroundColor: Colors.transparent,
          body: Center(
            child: SizedBox(
                width: 200,
                height: 200,
                child: Text("Home ",
                    style: TextStyle(color: Colors.white, fontSize: 30))),
          )),
    );
  }
}
