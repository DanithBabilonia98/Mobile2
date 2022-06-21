import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            Header(),
            DataUser(),
            CardInformacion(
              title: "Descripcion",
              description:
                  "Podría parecer que no estoy haciendo nada, pero en mi cabeza, estoy muy ocupada. :p",
            ),
          ]),
    );
  }
}

class CardInformacion extends StatelessWidget {
  final String title;
  final String description;
  const CardInformacion({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Description(
            description: description,
          ),
        ]),
      ),
    );
  }
}

class Description extends StatelessWidget {
  final String description;
  const Description({
    Key? key,
    required this.description,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(description,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 16, color: Colors.black)),
    );
  }
}

class DataUser extends StatelessWidget {
  const DataUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 24, 28, 28),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            DatosUser(cabecera: "Full Name", dato: " Mariana Martinez "),
            DatosUser(cabecera: "Email", dato: " marimat@yahoo.com"),
          ]),
    );
  }
}

class DatosUser extends StatelessWidget {
  final String cabecera;
  final String dato;

  const DatosUser({
    Key? key,
    required this.cabecera,
    required this.dato,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const styles = TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);

    return Column(children: <Widget>[
      Text(cabecera.toUpperCase(), style: styles.copyWith(fontSize: 12)),
      Text(dato, style: styles.copyWith(fontSize: 16)),
    ]);
  }
}

/*Imagen de fondo*/

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        padding: const EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2022/05/01/18/37/grass-7168204_960_720.jpg'),
                fit: BoxFit.cover)),
        child: const UserPhoto());
  }
}

/*Foto de y usuario*/

class UserPhoto extends StatelessWidget {
  const UserPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                fit: BoxFit.cover),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 6)),
        margin: const EdgeInsets.only(bottom: 6),
      ),
      const Text("@Maty98",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))
    ]);
  }
}
