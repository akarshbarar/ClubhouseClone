import 'package:clubhoseclone/Activity.dart';
import 'package:clubhoseclone/AvailabletoChat.dart';
import 'package:clubhoseclone/HomePage.dart';
import 'package:clubhoseclone/Profile.dart';
import 'package:clubhoseclone/Room.dart';
import 'package:clubhoseclone/Settings.dart';
import 'package:clubhoseclone/UTILS/AppColors.dart';
import 'package:clubhoseclone/chatpage.dart';
import 'package:clubhoseclone/finduser.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clubhouse Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: AppColor.backgroundColor),
        scaffoldBackgroundColor: AppColor.backgroundColor,
        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: HomePage(),
      routes: {
        '/profile': (context) => Profile(),
        '/explore': (context) => FindUser(),
        '/activity': (context) => Activity(),
        '/available': (context) => AvailableToChat(),
        '/chat': (context) => Chat(),
        '/room': (context) => Room(),
        '/settings': (context) => Settings()
      },
    );
  }
}
