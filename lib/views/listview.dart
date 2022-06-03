import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(children: const [
        ListTile(
          leading: Icon(Icons.cloud_circle),
          title: Text("Dato 4"),
        ),
        ListTile(
          leading: Icon(Icons.cloud_circle),
          title: Text("Dato 5"),
        ),
      ]),
    );
  }
}
