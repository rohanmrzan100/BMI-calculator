import 'package:bmi_calcu/resultpage.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF1D1E33),
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1D2E33))),
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      home: homePage(),
      routes: {
        'result': (context) => resultPage(),
        'home': (context) => homePage(),
      },
    );
  }
}
