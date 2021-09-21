import 'package:flutter/material.dart';

import 'package:my_todo/pages/today_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Задачи"),
      ),
      body: IndexedStack(index: _selectedTab, children: [
        TodayPage(),
        Text('Новости'),
        Profile(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
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
            icon: Icon(Icons.manage_accounts),
            label: 'Профиль',
          ),
        ],
        onTap: (onSelectedTab),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
        ),
        Text("Аккаунт"),
        SizedBox(height: 10),
        Row(children: [
          Text("Всего задач"),
        ]),
        SizedBox(height: 10),
        Row(
          children: [Text("Процент выполнения")],
        )
      ],
    );
  }
}
