// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/model/task_data.dart';
import 'package:to_do_provider/view/screen/addTaskScreen.dart';
import 'package:to_do_provider/view/widget/taskListTile.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[400],
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const Addtaskscreen(),
                    ),
                  ));
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              "${Provider.of<TaskData>(context).tasks.length} Task",
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                // height: height / 1.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TaskListTile(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
