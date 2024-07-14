import 'dart:convert';

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class Task {
//   final String name;
//   bool isdonee;
//   Task({
//     required this.name,
//     this.isdonee = false,
//   });
//   void isDone() {
//     isdonee = !isdonee;
//   }

//   @override
//   String toString() => 'Task(name: $name, isdonee: $isdonee)';

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'isdonee': isdonee,
//     };
//   }

//   factory Task.fromMap(Map<String, dynamic> map) {
//     return Task(
//       name: map['taskTitle'] as String,
//       isdonee: map['isDone'] as bool,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Task.fromJson(String source) =>
//       Task.fromMap(json.decode(source) as Map<String, dynamic>);
// }

//!
class Task {
  String taskTitle;
  bool isDone;
  String id;
  Task({
    required this.taskTitle,
    required this.isDone,
    required this.id,
  });
  void changingDone() {
    isDone = !isDone;
  }

  Task copyWith({
    String? taskTitle,
    bool? isDone,
    String? id,
  }) {
    return Task(
      taskTitle: taskTitle ?? this.taskTitle,
      isDone: isDone ?? this.isDone,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskTitle': taskTitle,
      'isDone': isDone,
      'id': id,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      taskTitle: map['taskTitle'] as String,
      isDone: map['isDone'] as bool,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) =>
      Task.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Task(taskTitle: $taskTitle, isDone: $isDone, id: $id)';

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;

    return other.taskTitle == taskTitle &&
        other.isDone == isDone &&
        other.id == id;
  }

  @override
  int get hashCode => taskTitle.hashCode ^ isDone.hashCode ^ id.hashCode;
}
