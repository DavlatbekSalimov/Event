import 'package:event/scr/birthdayplan_page/birthdayplan_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      home: BirthdayPlanPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.black),
        colorScheme: const ColorScheme.dark(
          background: Color(0xFF090909),
        ),
      ),
    );
  }
}
