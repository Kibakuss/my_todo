import 'package:flutter/material.dart';
import 'package:my_todo/pages/settings.dart';

import 'package:my_todo/pages/today_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late String _title;
  @override
  initState() {
    _title = 'Задачи';
  }

  // void onSelectedTab(int index) {
  //   if (_selectedTab == index) return;
  //   setState(() {
  //     _selectedTab = index;
  //   });
  // }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Задачи';
          }
          break;
        case 1:
          {
            _title = 'Календарь';
          }
          break;
        case 2:
          {
            _title = 'Настройки';
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_title),
      ),
      body: IndexedStack(index: _currentIndex, children: [
        TodayPage(),
        Text('Тут будет календарь'),
        Settings(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Задачи',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Календарь',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
        onTap: onTabTapped,
      ),
    );
  }
}
