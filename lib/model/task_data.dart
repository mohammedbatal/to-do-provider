import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:to_do_provider/model/list_model.dart';
import 'package:to_do_provider/res/url_App.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    // Task(name: 'mohammed'),
    // Task(name: 'ahmad', isdonee: true),
    // Task(name: 'Omar'),
  ];

  // void addTask(String newTask) {
  //   tasks.add(Task(name: newTask));
  //   notifyListeners();
  // }

  void updateTask(Task task) {
    task.changingDone();
    notifyListeners();
  }

  // void deleteTask(Task task) {
  //   tasks.remove(task);
  //   notifyListeners();
  // }

  void getData() async {
    Dio req = Dio();
    Response response = await req.get(UrlApp.mockApi);
    print('response =====================$response');
    print('response.statusCode =====================${response.statusCode}');
    var temp = List.generate(
      response.data.length,
      (index) => Task.fromMap(response.data[index]),
    );
    tasks = temp;
    print('tasksList ========================');
    print(tasks);
    print('tasksList ========================END');
    notifyListeners();
  }

  void addDataToApi(Map<String, dynamic> data) async {
    Dio dio = Dio();
    String url = UrlApp.mockApi;
    final response = await dio.post(url, data: data);
    if (response.statusCode! >= 200 && response.statusCode! <= 210) {
      print('Data added successfully');
      tasks.add(Task.fromMap(data));
    } else {
      print('Failed to add data ------ ${response.statusCode}');
    }
    notifyListeners();
  }

  void deleteDio(int itemId) async {
    try {
      Dio dio = Dio();
      Response response = await dio.delete('${UrlApp.mockApi}/$itemId');
      print(response.data);
      print('Done The DELETE');
    } catch (error) {
      print(error.toString());
    }
    notifyListeners();
  }
}
