import 'dart:ui';

import 'package:flutter/material.dart';
import '../widgets/choices_stack_widget.dart';
import '../widgets/custom_appbar_stack.dart';
import '../widgets/homescreen_announcements.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ChoicesStackWidget(),
        CustomAppBarStack(),
        HomescreenAnnouncements(),
      ],
    ));
  }
}
