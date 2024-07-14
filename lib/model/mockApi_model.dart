// // ignore_for_file: file_names

// class ListDio {
//   String? taskTitle;
//   bool? isDone;
//   String? id;

//   ListDio({
//     this.taskTitle,
//     this.isDone,
//     this.id,
//   });

//   ListDio.fromJson(Map<String, dynamic> json) {
//     taskTitle = json['taskTitle'];
//     isDone = json['isDone'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['taskTitle'] = this.taskTitle;
//     data['isDone'] = this.isDone;
//     data['id'] = this.id;
//     return data;
//   }

//   ListDio copyWith({
//     String? taskTitle,
//     bool? isDone,
//     String? id,
//   }) {
//     return ListDio(
//       taskTitle: taskTitle ?? this.taskTitle,
//       isDone: isDone ?? this.isDone,
//       id: id ?? this.id,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'taskTitle': taskTitle,
//       'isDone': isDone,
//       'id': id,
//     };
//   }

//   factory ListDio.fromMap(Map<String, dynamic> map) {
//     return ListDio(
//       taskTitle: map['taskTitle'] != null ? map['taskTitle'] as String : null,
//       isDone: map['isDone'] != null ? map['isDone'] as bool : null,
//       id: map['id'] != null ? map['id'] as String : null,
//     );
//   }

//   @override
//   int get hashCode => taskTitle.hashCode ^ isDone.hashCode ^ id.hashCode;

//   @override
//   String toString() =>
//       'ListDio(taskTitle: $taskTitle, isDone: $isDone, id: $id)';
// }
