import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            GFAvatar(
                backgroundImage: NetworkImage(
                    "https://www.xtrafondos.com/wallpapers/resized/husky-cachorro-6070.jpg?s=large"),
                radius: 180,
                shape: GFAvatarShape.standard),
            Text(
              "\n Full Name: Danith E. Babilonia",
              style: optionStyle,
            ),
            Text(
              "Username: danith98",
              style: optionStyle,
            ),
            Text(
              "Cel: 3145940426",
              style: optionStyle,
            ),
            Text(
              "Email: babiloniad@gmail.com",
              style: optionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
