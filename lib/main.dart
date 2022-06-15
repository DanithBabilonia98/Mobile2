import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/listview_3.dart';

/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final database = ConnectionFirebase();

  database.instanceFirebase();

  runApp(const MyApp());
}*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ActivityListPage());
  }
}

/*void callDatabase() {
  DatabaseReference starCountRef =
      FirebaseDatabase.instance.ref('/Registros/2345600');
  starCountRef.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString());
  });
}*/
