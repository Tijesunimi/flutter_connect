import 'package:flutter/material.dart';
import 'screens/intro_page.dart';
import 'screens/auth/mentor_login.dart';
import 'screens/auth/mentor_signup.dart';
import 'screens/auth/mentee_login.dart';
import 'screens/auth/mentee_signup.dart';
import 'screens/mentors.dart';
import 'screens/mentorPage.dart';

void main() => runApp(FlutterConnectApp());

class FlutterConnectApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Connect',
            routes: {
                'intro': (context) => IntroPage(),
                'mentorLogin': (context) => MentorLoginPage(),
                'mentorSignup': (context) => MentorSignupPage(),
                'menteeLogin': (context) => MenteeLoginPage(),
                'menteeSignup': (context) => MenteeSignupPage(),
                'menteeDashboard': (context) => MentorsList(),
                'mentorProfile': (context) => MentorPage()
            },
            initialRoute: 'intro',
        );
    }
}
