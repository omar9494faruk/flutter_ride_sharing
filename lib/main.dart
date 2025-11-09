import 'package:bloc_practice/screens/care_screen.dart';
import 'package:bloc_practice/screens/home_ui.dart';
import 'package:bloc_practice/style/style.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorWhite),
      ),
      initialRoute:'/',
      routes: {
        '/' : (context) => HomeUi(),
        '/care' : (context) => CareScreen(),
      },
    );
  }
}
