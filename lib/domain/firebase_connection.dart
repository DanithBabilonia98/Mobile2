import 'package:firebase_database/firebase_database.dart';

// instancia base de datos
//lista de objetos
//registro en especifico,

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }
}
