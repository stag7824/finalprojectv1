// ignore_for_file: library_private_types_in_public_api

import 'package:finalprojectv1/screens/Login/loginscreen.dart';
import 'package:finalprojectv1/screens/Quiz/common/route_generator.dart';
import 'package:finalprojectv1/screens/Quiz/models/category.dart';
import 'package:finalprojectv1/screens/Quiz/models/quiz.dart';
import 'package:finalprojectv1/screens/Quiz/quiz_category.dart';
import 'package:finalprojectv1/screens/Quiz/quiz_home_screen.dart';
import 'package:finalprojectv1/screens/Quiz/quiz_screen.dart';
import 'package:finalprojectv1/screens/Quiz/stores/quiz_store.dart';
import 'package:finalprojectv1/screens/onBoard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  await QuizStore.initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      // home: isviewed != 0 ? OnBoard() : QuizScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
