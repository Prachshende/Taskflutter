import 'package:flutter/material.dart';
class BoxButton extends StatelessWidget {
  const BoxButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Hello, Prachi!',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        const Text('What do you wanna learn today?',
          style: TextStyle(fontSize: 15),),
        SizedBox(height: 20,),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(

                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.image,color: Colors.blue,),
                      labelText: "Programs",
                      labelStyle: const TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.blue
                          )
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.help_rounded,color: Colors.blue,),
                      labelText: "Get help",
                      labelStyle: const TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.blue
                          )
                      )
                  ),
                ),
              ),
            ),
          ],

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 50,
                // width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.menu_book,color: Colors.blue,),
                      labelText: "Learn",
                      labelStyle: const TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.blue
                          )
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25,),
            Expanded(
              child: SizedBox(
                height: 50,
               
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.track_changes,color: Colors.blue,),
                    labelText: "DD Tracker",
                      labelStyle: const TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.blue
                          )
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
