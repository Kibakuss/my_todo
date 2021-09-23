import 'package:flutter/material.dart';
import 'package:my_todo/main_screen.dart';
import 'package:my_todo/pages/today_page.dart';
import 'package:my_todo/pages/add_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange[400],
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.orange[600],
          selectedItemColor: Colors.blue[50],
          unselectedItemColor: Colors.white70,
        ),
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
