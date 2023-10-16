import 'package:flutter/material.dart';
import 'package:module_10_flutter_06/Update_new_task_modal.dart';
import 'package:module_10_flutter_06/add_new_task_modal.dart';
import 'package:module_10_flutter_06/todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Todo> taskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNewTskModal(
                  onAddTap: (task) {

                  },
                );
              });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Actions"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.edit),
                            title: Text("Update"),
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(
                                  context: context, builder: (context) {
                                return UpdateTaskModal();
                              });
                            },
                          ),
                          Divider(
                            height: 0,
                          ),
                          ListTile(
                            leading: Icon(Icons.delete),
                            title: Text("Delete"),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    );
                  });
            },
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("${index + 1}"),
            ),
            title: Text(taskList[index].details),
            subtitle: Text(taskList[index].createdDateTime.toString()),
            trailing: Text("Pending..."),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 4,
          );
        },
      ),
    );
  }

  void addTask(Todo task) {
    taskList.add(task);
    setState(() {

    });
  }
}


