import 'package:flutter/material.dart';
import 'package:my_todo/pages/add_task.dart';

// class TodayPage extends StatefulWidget {
//   const TodayPage({Key? key}) : super(key: key);

//   @override
//   State<TodayPage> createState() => _TodayPageState();
// }

// class _TodayPageState extends State<TodayPage> {
//   void addtask() {
//     // Navigator.of(context).pushReplacementNamed("/main_screen");
//     Navigator.of(context).pushNamed("/add_task");

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           addtask;
//         },
//         backgroundColor: Colors.blue,
//         elevation: 5,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }


//  floatingActionButton: FloatingActionButton(
//         backgroundColor: Theme.of(context).primaryColor,
//         onPressed: () => {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (_) => AddTaskScreen(updateTaskList: _updateTaskList),