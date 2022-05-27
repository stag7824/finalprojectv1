import 'package:flutter/material.dart';

class CustomAppBarStack extends StatelessWidget {
  const CustomAppBarStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        image: DecorationImage(
            image: const AssetImage('assets/images/background_img.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
                color: Colors.white,
                iconSize: 35,
              ),
              SizedBox(
                width: 95,
              ),
              Text(
                'Edutech',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'hello',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Your Name', //place holder for users name
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey,
                    child: Container(
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/circle_avatar_place_holder.jpg'),
                              fit: BoxFit.cover,
                            ))),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
