import 'package:flutter/material.dart';

class TitleWithCustomer extends StatelessWidget {
  const TitleWithCustomer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(text,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,

              child: Container(
                margin: const EdgeInsets.only(right: 20/4),
                height: 7,
                color: Colors.white60,

              ))
        ],
      ),
    );
  }
}
class TitleWithMoreBtb extends StatelessWidget {
  const TitleWithMoreBtb({Key? key,
    required this.title,}) :
        super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWithCustomer(text: title),
          Spacer(),
          Text('View all'),
          const Icon(Icons.arrow_right_alt_sharp,),
        ],
      ),
    );
  }
}


