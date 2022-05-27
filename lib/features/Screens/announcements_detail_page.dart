import 'package:flutter/material.dart';

class AnnouncementsDetailPage extends StatelessWidget {
  const AnnouncementsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(color: Colors.red),
      Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
                image: AssetImage('assets/images/background_img.png'),
                fit: BoxFit.cover)),
      ),
    ]));
  }
}
