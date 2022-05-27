import 'package:flutter/material.dart';
import '../Screens/announcements_screen.dart';
import '../Screens/chat_screen.dart';
import '../Screens/courses_screen.dart';
import '../Screens/results_screen.dart';
import '../Screens/schedule_screen.dart';
import '../Screens/student_homescreen.dart';
import '../Screens/student_homework_screen.dart';
import '../Screens/student_quiz_screen.dart';
import '../providers/courses_provider.dart';
import 'package:provider/provider.dart';

class ChoicesStackWidget extends StatelessWidget {
  const ChoicesStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 415,
            // color: Colors.red,
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 4,
              crossAxisCount: 2,
              childAspectRatio: (2.5 / 1.5),
              primary: false,
              children: [
                //announcements button
                GestureDetector(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Notice',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              // padding: EdgeInsets.symmetric(horizontal: 15),
                              height: 90,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/megaphone_notice.jpg'),
                                ),
                              ),
                            )
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AnnouncementsScreen()));
                    }),
                // quiz page button
                GestureDetector(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Quiz',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              // padding: EdgeInsets.only(right: 20),
                              height: 90,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/quiz.png'),
                                ),
                              ),
                            )
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              CoursesScreen(nextScreen: StudentQuizPage())));
                    }),
                //assignments page button
                GestureDetector(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Homework',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.only(right: 20),
                              height: 90,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/homework.png'),
                                ),
                              ),
                            )
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CoursesScreen(
                              nextScreen: StudentHomeworkPage())));
                    }),
                //Schedule
                GestureDetector(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Schedule',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              // padding: EdgeInsets.only(right: 20),
                              height: 90,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/scheduler.png'),
                                ),
                              ),
                            )
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScheduleScreen()));
                    }),
                //results button
                GestureDetector(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Results',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              // padding: EdgeInsets.only(right: 20),
                              height: 90,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/results.png'),
                                ),
                              ),
                            )
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              CoursesScreen(nextScreen: ResultsScreen())));
                    }),
                //chat button
                GestureDetector(
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Chat',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              // padding: EdgeInsets.only(right: 20),
                              height: 90,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/chat.png'),
                                ),
                              ),
                            )
                          ],
                        )),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              CoursesScreen(nextScreen: ChatScreen())));
                    }),
              ],
            ),
          ),
        ));
  }
}
