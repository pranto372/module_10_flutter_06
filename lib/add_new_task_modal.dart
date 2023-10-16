import 'package:flutter/material.dart';
import 'package:module_10_flutter_06/todo.dart';

class AddNewTskModal extends StatefulWidget {
  const AddNewTskModal({
    super.key,
    required this.onAddTap,
  });

  final Function(Todo) onAddTap;

  @override
  State<AddNewTskModal> createState() => _AddNewTskModalState();
}

class _AddNewTskModalState extends State<AddNewTskModal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Add New ToDo",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            maxLines: 4,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
                hintText: "Add New ToDo",
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: Text("Add")))
        ],
      ),
    );
  }
}