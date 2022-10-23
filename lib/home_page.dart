import 'package:change_notifier_example/course_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'course.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
            width: double.maxFinite,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                "I want to learn: ${Provider.of<Course>(context).course}",
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          const CourseWidget(course: "Flutter"),
          const CourseWidget(course: "Dart"),
          const CourseWidget(course: "Java"),
          const CourseWidget(course: "Kotlin"),
          const CourseWidget(course: "React Native"),
        ],
      ),
    );
  }
}
