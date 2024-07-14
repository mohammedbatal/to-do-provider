import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/model/task_data.dart';
import 'package:to_do_provider/view/screen/taskScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData()..getData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
