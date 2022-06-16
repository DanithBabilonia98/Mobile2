import 'package:firebase_database/firebase_database.dart';
import '../Entities/response_firebase.dart';

// instancia base de datos
//lista de objetos
//registro en especifico,

class ConnectionFirebase {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  Future<ResponseFirebase> getRegistros() async {
    try {
      DatabaseReference registros = instanceFirebase();
      DataSnapshot respuesta = await registros.get();
      final respuetaMap = Map<String, dynamic>.from(respuesta.value as Map);
      final registers = ResponseFirebase.fromJson(respuetaMap.values.toList());
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
