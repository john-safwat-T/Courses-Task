
import 'package:courses_task/Core/Images/image_assets_provider.dart';
import 'package:courses_task/Core/Utils/content_provider.dart';
import 'package:courses_task/Models/course_content.dart';
import 'package:courses_task/UI/Home/Widget/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";
  HomeScreen({super.key});

  List<CourseContent> buttons = [
    CourseContent("1" , "Android Course", ImageAssetsProvider.androidPath , ContentProvider.coursesContent[0]),
    CourseContent("2" ,"IOS Course", ImageAssetsProvider.iosPath,ContentProvider.coursesContent[2]),
    CourseContent("3" , "Full Stack Course", ImageAssetsProvider.fullStackPath, ContentProvider.coursesContent[1]),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RouteAppOne"),
      ),
      body: ListView.separated(
        padding:const EdgeInsets.all(16),
          itemBuilder: (context, index) => CustomButton(buttons[index]),
        itemCount: buttons.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16,),
      ),

    );
  }
}
