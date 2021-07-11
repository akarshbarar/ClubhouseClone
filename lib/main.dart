import 'package:clubhoseclone/HomePage.dart';
import 'package:clubhoseclone/UTILS/AppColors.dart';
import 'package:flutter/material.dart';

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
          accentColor: Colors.green,
          appBarTheme: AppBarTheme(backgroundColor: AppColor.backgroundColor),
          scaffoldBackgroundColor: AppColor.backgroundColor,
          iconTheme: IconThemeData(color: Colors.black)),
      home: HomePage(),
    );
  }
}
