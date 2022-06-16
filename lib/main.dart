import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/domain/firebase_connection.dart';
import 'package:flutter_application_2/firebase_options.dart';
import 'package:flutter_application_2/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final database = ConnectionFirebase();

  database.instanceFirebase();
  //callDatabase();

  runApp(const MyApp());
}
/*void main() {
  runApp(const MyApp());
}*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SplashView(),
    );
  }
}

/*callDatabase() {
  DatabaseReference starCountRef = FirebaseDatabase.instance.ref('/Registros/');
  starCountRef.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString());
  });
}*/
