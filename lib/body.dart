import 'package:flutter/material.dart';
import 'package:taskflutter/title.dart';

import 'Boxbtn.dart';
import 'ExercisePage.dart';
import 'RecomedPage.dart';
import 'lessonPage.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
         children: const [
           BoxButton(),
           SizedBox(height: 25,),
           TitleWithMoreBtb(title: "Programs for you",),
           SizedBox(height: 25,),
           RecomendCardPage(),
           SizedBox(height: 25,),
           TitleWithMoreBtb(title: "Events and experience",),
           SizedBox(height: 10,),
           ExerciseList(),
           SizedBox(height: 10,),
           TitleWithMoreBtb(title: "Lessons for you",),
           SizedBox(height: 10,),
           LessonList(),




    ]
    )
    );
  }
}
