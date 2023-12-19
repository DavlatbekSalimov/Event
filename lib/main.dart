import 'package:event/scr/mian_page/main_page.dart';
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
      home: MainPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.black),
        colorScheme: const ColorScheme.dark(
          background: Color(0xFF090909),
        ),
      ),
    );
  }
}
