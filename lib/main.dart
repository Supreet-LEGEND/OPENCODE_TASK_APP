import 'package:flutter/material.dart';
import 'package:profile_app/home_page.dart';
import 'package:profile_app/profile_page.dart';
import 'package:profile_app/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false, // remove debug banner
      routes: {
        Routes.homePage: (context) => HomePage(),
        Routes.profilePage: (context) => ProfilePage()
      },
    );
  }
}
