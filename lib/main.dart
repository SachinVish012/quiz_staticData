import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question/screens/quiz_screen/quiz_screen.dart';
import 'package:question/screens/result_screen/result_screen.dart';
import 'package:question/screens/welcome_screen.dart';
import 'package:question/util/bindings_app.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsApp(),
      home:  WelcomeScreen(),
      getPages: [
        GetPage(name: WelcomeScreen.routeName, page: () => WelcomeScreen()),
        GetPage(name: QuizScreen.routeName, page: () =>  QuizScreen()),
        GetPage(name: ResultScreen.routeName, page: () =>  ResultScreen()),
      ],

    );
  }
}
