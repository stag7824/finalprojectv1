import 'package:flutter/material.dart';
import './student_homescreen.dart';
import '../providers/courses_provider.dart';
import 'package:provider/provider.dart';

class CoursesScreen extends StatelessWidget {
  Widget nextScreen;
  CoursesScreen({required this.nextScreen, super.key});

  var pageCounter = 0;

  @override
  Widget build(BuildContext context) {
    final course_listner = Provider.of<CoursesProvider>(context).subjects;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey[200],
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 700,
                // color: Colors.red,
                child: ListView.builder(
                  itemCount: course_listner.length,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    width: 300,
                    height: 100,
                    margin: EdgeInsets.all(5),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => nextScreen,
                      )),
                      child: Card(
                        color: Colors.deepPurple[400],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: ListTile(
                            title: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                course_listner[index].subjectName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                            subtitle: Text(
                              course_listner[index].teacherName,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            // color: Colors.red,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                image: DecorationImage(
                    image: AssetImage('assets/images/background_img.png'),
                    fit: BoxFit.cover)),
            child: Column(children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => StudentHomeScreen()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Courses',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
