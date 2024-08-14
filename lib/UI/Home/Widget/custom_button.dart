import 'package:courses_task/Models/course_content.dart';
import 'package:courses_task/UI/CourseDetails/course_details_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CourseContent courseDetails;

  CustomButton(this.courseDetails);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: courseDetails.id,
          child: Image.asset(courseDetails.imagePath)
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => CourseDetailsScreen(courseDetails),
              //     ));
              Navigator.pushNamed(context, CourseDetailsScreen.routeName, arguments:courseDetails );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    courseDetails.name,
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
