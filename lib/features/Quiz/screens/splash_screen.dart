import 'package:flutter/material.dart';
import 'package:finalprojectv1/features/Quiz/common/extensions.dart';
import 'package:finalprojectv1/features/Quiz/screens/quiz_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:finalprojectv1/features/Quiz/screens/quiz_category_details.dart';
import 'package:flutter/material.dart';
import '../common/alert_util.dart';
import '../common/theme_helper.dart';
import '../models/category.dart';
import '../models/dto/option_selection.dart';
import '../models/dto/quiz_result.dart';
import '../models/option.dart';
import '../models/question.dart';
import '../models/quiz.dart';
import '../models/quiz_history.dart';
import '../services/quiz_engine.dart';
import '../stores/quiz_store.dart';
import '../widgets/disco_button.dart';
import '../widgets/question_option.dart';
import '../widgets/screen_header.dart';
import '../widgets/time_indicator.dart';
import 'home_screen.dart';
import 'quiz_category.dart';
import 'quiz_history_screen.dart';
import 'quiz_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/SplashScreen.bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Image(
            image: AssetImage("assets/images/SplashScreen.shape.png"),
          ),
        ),
      ),
    );
  }
}
