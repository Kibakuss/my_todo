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
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
      theme: MyThemes.lightTheme,
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Colors.orange[400],
      //   ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //   backgroundColor: Colors.orange[600],
      //   selectedItemColor: Colors.blue[50],
      //   unselectedItemColor: Colors.white70,
      // ),

      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyThemes {
  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.orange[400],
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.orange[600],
      selectedItemColor: Colors.blue[50],
      unselectedItemColor: Colors.white70,
    ),
  );
  static final darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF8B0000),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF8B0000),
        selectedItemColor: Colors.white54,
        unselectedItemColor: Colors.white30,
      ),
      scaffoldBackgroundColor: Colors.grey[850]);
}
