import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stroke Text"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            StrokeText(text: "Stroke Text",),
            StrokeText(
              text: "Stroke Text",
              textStyle: TextStyle(
                  fontSize: 50
              ),
            ),
            StrokeText(
              text: "Flutter",
              textStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.green
              ),
              strokeColor: Colors.amber,
              strokeWidth: 5,
            ),
          ],
        ),
      ),
    );
  }

}


