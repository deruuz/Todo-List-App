import 'package:flutter/material.dart';
import 'package:modul09_1301213256/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow[300],
        content: Container(
          height: 120,
          child: Column(
            children: [
              //user input
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add a new task",
                ),
              ),

              //button save + cancel
              Row(
                children: [
                  //button save
                  MyButton(text: 'Save', onPressed: onSave),
                  const SizedBox(width: 8),

                  //button cancel
                  MyButton(text: 'Cancel', onPressed: onCancel),
                ],
              )
            ],
          ),
        ));
  }
}
