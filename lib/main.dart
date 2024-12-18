import 'package:flutter/material.dart';
import 'package:flutter_task1/category_screen/category_screen.dart';
import 'package:flutter_task1/home_screens/home_screen.dart';
import 'package:flutter_task1/movie_screen/movie_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:Color.fromARGB(255, 0, 0, 22),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context)=>HomeScreen(),
        "CategoryScreen" :(context)=>CategoryScreen(),
        "movieScreen" :(context)=>MovieScreen(),
      },
    );
  }
}
