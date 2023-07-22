import 'package:flutter/material.dart';

class lessonCard extends StatelessWidget {
  const lessonCard(
      {Key? key, required this.image,
        required this.title,
        required this.press,
        required this.subtitle,
        required this.nextitle}) :
        super(key: key);

  final String image,title,subtitle,nextitle;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          top: 20/2,
          bottom: 20*2.5,

        ),
        width: size.width*0.8,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(10),

              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,30),
                        blurRadius: 50,
                        color:Colors.white60
                    )
                  ]
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: title.toUpperCase(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            TextSpan(
                              text:subtitle,
                              style: const TextStyle(
                                // color: Colors.white60,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: nextitle,
                            )
                          ]
                      )
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




class LessonList extends StatelessWidget {
  const LessonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          lessonCard(
            image: "assets/img_3.png",
            title: "Babycare \n\n",
            subtitle: "Understanding of human behaviour\n\n",
            nextitle: "13 Feb, Sunday",
            press: (){},
          ),
          lessonCard(
            image: "assets/img_3.png",
            title: "Babycare \n\n",
            subtitle: "Understanding of human behaviour\n\n",
            nextitle: "13 Feb, Sunday",
            press: (){},
          ),
          lessonCard(
            image: "assets/img_3.png",
            title: "Babycare \n\n",
            subtitle: "Understanding of human behaviour\n\n",
            nextitle: "13 Feb, Sunday",
            press: (){},
          ),

        ],
      ),
    );
  }
}

