import 'package:flutter_application_2/Entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({this.registros});

  ResponseFirebase.fromJson(Map<String, dynamic> json) {
    if (json['registros'] != null) {
      registros = <Registros>[];
      json['registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    }
  }
}
