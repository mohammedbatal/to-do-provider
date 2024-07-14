// ignore_for_file: file_names, dead_code
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/model/task_data.dart';

class TaskListTile extends StatefulWidget {
  const TaskListTile({super.key});

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  @override
  Widget build(BuildContext context) {
    final result = Provider.of<TaskData>(context);
    if (result.tasks.isEmpty) {
      return CircularProgressIndicator();
    } else {
      return ListView.builder(
        itemCount: result.tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              result.tasks[index].taskTitle,
              style: TextStyle(
                  decoration: result.tasks[index].isDone
                      ? TextDecoration.lineThrough
                      : null),
            ),
            trailing: Checkbox(
              value: result.tasks[index].isDone,
              onChanged: (newValue) {
                result.updateTask(result.tasks[index]);
                print('object');
              },
            ),
            onLongPress: () async {
              context
                  .read<TaskData>()
                  .deleteDio(int.parse(result.tasks[index].id));
            },
          );
        },
      );
    }
  }
}
              // context.read<TaskData>().deleteDio(index + 1);





  // factory Task.fromMap(Map<String, dynamic> map) {
  //   return Task(
  //     name: map['taskTitle'] as String,
  //     isdonee: map['isDone'] as bool,
  //   );
  // }