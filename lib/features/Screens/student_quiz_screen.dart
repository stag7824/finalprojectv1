import 'package:flutter/material.dart';
import '../models/courses_model.dart';
import 'package:provider/provider.dart';

class StudentQuizPage extends StatelessWidget {
  StudentQuizPage({super.key});

  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey[200],
            // child: Center(child: Text(listener.subjectName)),
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                image: DecorationImage(
                    image: AssetImage('assets/images/background_img.png'),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        'Quiz',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'UnSubmitted',
                        style: TextStyle(color: Colors.grey[200], fontSize: 15),
                      ),
                      Text(
                        'Submitted',
                        style: TextStyle(fontSize: 15, color: Colors.grey[200]),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
