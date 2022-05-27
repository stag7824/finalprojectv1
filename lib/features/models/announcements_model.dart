import 'package:flutter/foundation.dart';

class AnnouncementsModel {
  final String id;
  final String title;
  final String description;
  final DateTime dateTime;

  AnnouncementsModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.dateTime});
}
