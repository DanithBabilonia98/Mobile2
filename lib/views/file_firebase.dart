import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Firebase extends StatelessWidget {
  const Firebase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }

  void CallDatabase() {
    DatabaseReference database = FirebaseDatabase.instance.ref('/Carros/');
    database.onValue.listen((event) {
      final data = event.snapshot.value;
      print(data.toString());
    });
    /*/  DatabaseReference ref = FirebaseDatabase.instance.ref();

    String id = "Bmw";
    final user = FirebaseDatabase.instance.ref();
    final obj = user.child('Carros/$id').get();
    // ignore: avoid_print
    print(obj.value);*/
  }
}
