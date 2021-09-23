import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  //final mainstyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _MenuWidget(mainText: "Аккаунт"),
          _MenuWidgetRow(icon: Icons.account_box_outlined, text: "Профиль"),
          _MenuWidget(mainText: "Настройки"),
          _MenuWidgetRow(icon: Icons.brightness_6_outlined, text: "Тема"),
          _MenuWidgetRow(icon: Icons.language, text: "Язык"),
          _MenuWidgetRow(
              icon: Icons.access_time_filled_sharp,
              text: "Определение времени"),
        ],
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  final String mainText;
  // final TextStyle mainstyle;
  final mainstyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  _MenuWidget({Key? key, required this.mainText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            mainText,
            style: mainstyle,
          ),
        ],
      ),
    ));
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final IconData icon;
  final String text;
  _MenuWidgetRow({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon),
          SizedBox(width: 15),
          Expanded(child: Text(text)),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
