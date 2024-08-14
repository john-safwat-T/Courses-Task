import 'package:courses_task/Core/Images/image_assets_provider.dart';
import 'package:courses_task/Models/course_content.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {

  static const String routeName = "Details";
  // final CourseContent courseContent;
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CourseContent courseContent = ModalRoute.of(context)!.settings.arguments as CourseContent;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(ImageAssetsProvider.bgPath )
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(courseContent.name),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Hero(
              tag: courseContent.id,
                child: Image.asset(courseContent.imagePath)
            ),
            const SizedBox(height: 16,),
            Text(courseContent.courseContent , style: const TextStyle(color: Colors.white , fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
