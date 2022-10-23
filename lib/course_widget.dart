import 'package:change_notifier_example/course.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseWidget extends StatelessWidget {
  final String course;
  const CourseWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Provider.of<Course>(context, listen: false).selectCourse(course),
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            course,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
