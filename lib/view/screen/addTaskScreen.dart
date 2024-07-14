// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/model/task_data.dart';

class Addtaskscreen extends StatelessWidget {
  const Addtaskscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? newtitle;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 1.5,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autocorrect: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newtitle = value;
            },
          ),
          const SizedBox(height: 20),
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal[400],
              ),
              child: const Text(
                "Add",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            onTap: () async {
              context.read<TaskData>().addDataToApi(
                  {"taskTitle": newtitle, "isDone": false, "id": ''});
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
