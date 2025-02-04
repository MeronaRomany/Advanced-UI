import 'package:advanced_ui/screens/first_screen.dart';
import 'package:advanced_ui/screens/second_screen.dart';
import 'package:advanced_ui/screens/three_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home:FirstScreen(),
      routes: {
        "Secondpage":(context)=>SecondScreen(),
        "Threepage":(context)=>ThreeScreen(),
        "Firstpage":(context)=>FirstScreen(),
      },
    );
  }
}

