
import 'package:flutter/material.dart';

import 'body.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage( {Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("assets/icon.ico",height: 60,width: 60,),
          onPressed: (){},
        ),
        backgroundColor: Colors.white70,
            title: const Center(child: Text('Flutter task')),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message,color: Colors.black38,),
          ),
          IconButton(onPressed: () {},
              icon: const Icon(Icons.notification_add,color: Colors.black38,)),
        ],
      ),
      // drawer: const Drawer(
      //
      // ),
      body: const Body(),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentIndex,
        selectedItemColor: Colors.blue,
          onTap: (index)
          {
            setState(() {
              CurrentIndex = index;
            });
          },
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Icons.home,color: Colors.black38,),label: 'Home'),
          BottomNavigationBarItem(
              icon:Icon(Icons.menu_book,color: Colors.black38,),label: 'Learn'),
          BottomNavigationBarItem(
              icon:Icon(Icons.hub,color: Colors.black38,),label: 'Hub'),
          BottomNavigationBarItem(
              icon:Icon(Icons.chat,color: Colors.black38,),label: 'Chat'),
          BottomNavigationBarItem(
              icon:Icon(Icons.image,color: Colors.black38,),label: 'Profile'),
        ],),

    );
  }
}


