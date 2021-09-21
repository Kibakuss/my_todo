// import 'package:flutter/material.dart';
// import 'package:my_todo/pages/today_page.dart';

// class AddScreen extends StatefulWidget {
//   const AddScreen({Key? key}) : super(key: key);

//   @override
//   State<AddScreen> createState() => _AddScreenState();
// }

// class _AddScreenState extends State<AddScreen> {
//   TextEditingController searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Новая задача"),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: searchController,
//               decoration: InputDecoration(
//                 labelText: "Поиск",
//                 filled: true,
//                 fillColor: Colors.white.withAlpha(235),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 // Navigator.pop(context);
//                 addItemToList();
//               },
//               child: Text("Сохранить"))
//         ],
//       ),
//       //Button(),
//     );
//   }
// }

// class TextFieldWidget extends StatefulWidget {
//   const TextFieldWidget({Key? key}) : super(key: key);

//   @override
//   _TextFieldWidgetState createState() => _TextFieldWidgetState();
// }

// class _TextFieldWidgetState extends State<TextFieldWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final _searchController = TextEditingController();

//     return TextField(
//       controller: _searchController,
//       decoration: InputDecoration(
//         labelText: "Поиск",
//         filled: true,
//         fillColor: Colors.white.withAlpha(235),
//         border: OutlineInputBorder(),
//       ),
//     );
//   }
// }

// class Button extends StatefulWidget {
//   const Button({Key? key}) : super(key: key);

//   @override
//   State<Button> createState() => _ButtonState();
// }

// class _ButtonState extends State<Button> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ElevatedButton(
//           onPressed: Navigator.pop(context), child: Text("папапв")),
//     );
//   }
// }
