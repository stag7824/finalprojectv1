import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_img.png'),
              fit: BoxFit.cover),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            width: double.infinity,
            height: 600,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 300,
                  height: 200,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  )),
            )),
      ),
    ]));
  }
}
