import 'dart:io';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File img = File("assets/avengers.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black87,
        padding: EdgeInsets.all(20),
        child: Card(
          child: Container(
            alignment: Alignment.center,
            color: Colors.black87,
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                    child: Image.asset("lib/assets/avengers.jpg")),

                SizedBox(
                  height: 30,
                ),

                Text(
                  "User Name",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // add details

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Column(
                    children: [
                      ProfilePageUtils.detailsCard(
                        icon: Icon(Icons.code),
                        cardString: "TechStack:Flutter",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProfilePageUtils.detailsCard(
                        icon: Icon(Icons.phone),
                        cardString: "+44 456 123 789",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProfilePageUtils.detailsCard(
                        icon: Icon(Icons.mail),
                        cardString: "username@gmail.com",
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfilePageUtils {
  static Widget detailsCard(
      {required Widget icon, required String cardString}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: icon,
          ),
          Expanded(
            flex: 3,
            child: Text(cardString),
          ),
        ],
      ),
    );
  }
}
