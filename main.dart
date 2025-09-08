import 'package:flutter/material.dart';

/* Import the material design library, it provides widgets

the material.dart is a part of a FLUTTER SDK and implements in google material design guidelines for UI
* */

void main() {
  runApp(const myApp()); // flutter app function initialize the app that attached on the root widget (main screen) to the screen.

}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Initial D',
      theme: ThemeData(
        primarySwatch:  Colors.blue,
      ),
      home: const MyHomePage(),
    );

  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter App'),
      ), // Appbar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network ('https://tse2.mm.bing.net/th/id/OIP.dJ1By7B0M1Sh8mp3CXa9awAAAA?r=0&cb=thfvnext&rs=1&pid=ImgDetMain&o=7&rm=3',
              width: 300,
              height: 300,
            ),
            const Text(
              'INITIAL D',
              style: TextStyle(fontSize: 50),
            ), const Text(
              'Initial D is about a high school student named Takumi Fujiwara who unknowingly becomes a street racing legend. He delivers tofu every morning in his dad’s old car—a Toyota AE86—through winding mountain roads. Over time, he masters the art of drifting. When local racers discover his skills, Takumi gets pulled into intense battles against rival teams across Japan',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
