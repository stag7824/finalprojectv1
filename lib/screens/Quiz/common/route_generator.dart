import 'package:finalprojectv1/Screens/Quiz/models/category.dart';
import 'package:finalprojectv1/screens/Quiz/quiz_home_screen.dart';
import 'package:finalprojectv1/screens/Quiz/models/dto/quiz_result.dart';
import 'package:finalprojectv1/screens/Quiz/models/quiz.dart';
import 'package:flutter/material.dart';
import '../quiz_category.dart';
import '../quiz_category_details.dart';
import '../quiz_history_screen.dart';
import '../quiz_result_screen.dart';
import '../quiz_screen.dart';
// import '../splash_screen.dart';

import '../quiz_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case QuizHomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => QuizHomeScreen());
      case QuizScreen.routeName:
        if (args is Quiz) {
          return MaterialPageRoute(
            builder: (_) => QuizScreen(args),
          );
        }
        return _errorRoute();
      case QuizResultScreen.routeName:
        if (args is QuizResult) {
          return MaterialPageRoute(
            builder: (_) => QuizResultScreen(args),
          );
        }
        return _errorRoute();
      case QuizCategoryScreen.routeName:
        return MaterialPageRoute(builder: (_) => QuizCategoryScreen());
      case QuizHistoryScreen.routeName:
        return MaterialPageRoute(builder: (_) => QuizHistoryScreen());
      case QuizCategoryDetailsScreen.routeName:
        if (args is Category) {
          return MaterialPageRoute(
            builder: (_) => QuizCategoryDetailsScreen(args),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text(
            'ERROR: Please try again.',
            style: TextStyle(fontSize: 32),
          ),
        ),
      );
    });
  }
}
