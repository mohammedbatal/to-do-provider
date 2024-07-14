// import 'package:flutter/material.dart';

// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }

// class _MyFormState extends State<MyForm> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('نموذج بسيط'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text('الاسم', style: TextStyle(fontSize: 20)),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'الاسم',
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'يرجى إدخال الاسم';
//                   }
//                   return null;
//                 },
//                 // يمكنك تعليق الكود أدناه لمنع حفظ القيمة المدخلة
//                 // onSaved: (value) {
//                 //   // يتم تنفيذ الكود هنا لحفظ القيمة المدخلة
//                 // },
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // يتم تنفيذ الكود هنا بعد التحقق من صحة المدخلات
//                     print('تم تأكيد صحة المدخلات');
//                   }
//                 },
//                 child: Text('إرسال'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
