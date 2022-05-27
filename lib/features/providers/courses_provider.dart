import 'package:flutter/foundation.dart';
import '../models/courses_model.dart';

class CoursesProvider with ChangeNotifier {
  List<CoursesModel> _subjects = [
    CoursesModel(
        courseId: '0001',
        subjectName: 'Math 2',
        teacherId: '1957',
        teacherName: 'Samantha Green'),
    CoursesModel(
        courseId: '0002',
        subjectName: 'Science',
        teacherId: '1958',
        teacherName: 'John Shelby'),
    CoursesModel(
        courseId: '0004',
        subjectName: 'English',
        teacherId: '2022',
        teacherName: 'Fallon Smith'),
    CoursesModel(
        courseId: '0005',
        subjectName: 'Geography',
        teacherId: '3000',
        teacherName: 'Blake Jack'),
    CoursesModel(
        courseId: '0006',
        subjectName: 'Urdu',
        teacherId: '1978',
        teacherName: ' Muhammad Ali'),
    CoursesModel(
        courseId: '0007',
        subjectName: 'Math 1',
        teacherId: '2969',
        teacherName: 'Patrick Neal'),
    CoursesModel(
        courseId: '0008',
        subjectName: 'English',
        teacherId: '7979',
        teacherName: 'Harrison Ford'),
  ];

  List<CoursesModel> get subjects {
    return [..._subjects];
  }
}
