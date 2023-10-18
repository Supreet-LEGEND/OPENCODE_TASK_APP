import 'package:flutter/material.dart';
import 'package:profile_app/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            Navigator.pushNamed(context, Routes.profilePage);
          },
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Welcome to profile page App.'),
            SizedBox(
              height: 20,
            ),
            Text("Click on the profile icon to view your profile."),
            SizedBox(
              height: 10,
            ),
            Text("( On the Top Left corner )")
          ],
        ),
      ),
    );
  }
}
