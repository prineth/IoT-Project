import 'package:flutter/material.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/styles/appstyles.dart';
import 'Screens/login.dart';
import 'package:firebase_core/firebase_core.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Factory',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: AppStyles.primaryColor,
        scaffoldBackgroundColor: AppStyles.primaryColor,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder()
        )
      ),

      home: MainPage(),
    );
  }
}
