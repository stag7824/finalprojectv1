import 'package:finalprojectv1/Features/Quiz/screens/quiz_history_screen.dart';
import 'package:finalprojectv1/components/rounded_button.dart';
import 'package:finalprojectv1/features/Login/components/background.dart';
import 'package:finalprojectv1/features/Quiz/screens/quiz_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodySelection extends StatelessWidget {
  const BodySelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Quiz",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "Take Quiz",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizCategoryScreen(),
                  ),
                );
              },
            ),
            RoundedButton(
              text: "History",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizHistoryScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
