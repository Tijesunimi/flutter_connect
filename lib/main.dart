import 'package:flutter/material.dart';
import 'package:flutter_connect/editProfile.dart';
import 'package:flutter_connect/mentorPage.dart';
import 'package:flutter_connect/searchPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Asap"),
      debugShowCheckedModeBanner: false,
      initialRoute: "SearchPage",
      routes: {
        "MentorPage": (context) => MentorPage(),
        "EditProfile": (context) => EditProfile(),
        "SearchPage": (context) => SearchPage()
      },
    );
  }
}
