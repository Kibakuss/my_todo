import 'package:flutter/material.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  late String _userToDo;
  List todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                color: Colors.grey[50],
                child: ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          todoList.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.delete),
                      color: Colors.red[600]),
                ),
              ),
              onDismissed: (direction) {
                //if (direction == DismissDirection.endToStart);
                setState(() {
                  todoList.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[700],
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.yellow, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  title: Text("Добавить задачу"),
                  content: TextField(
                    onChanged: (String value) {
                      _userToDo = value;
                      // if (value == null) {
                      //   return Navigator.of(context).pop();
                      // }
                    },
                  ),
                  actions: [
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: () {
                            setState(() {
                              todoList.add(_userToDo);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Добавить")),
                    )
                  ],
                );
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
