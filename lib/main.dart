import 'package:finalprojectv1/features/Login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Features/onBoard/onboard.dart';
import 'features/Quiz/common/route_generator.dart';
import 'features/Quiz/stores/quiz_store.dart';

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
        // primarySwatch: Colors.purple,
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/",
      home: isviewed != 0 ? OnBoard() : const LoginScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
