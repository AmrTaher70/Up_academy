import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:up_course2/cubit/ui.dart';
import 'package:up_course2/inteactive%20_widgets/task.dart';
import 'package:up_course2/more_widgets/whats_app.dart';

import 'auync/perference_task.dart';
import 'bmi/bmi.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ui (),
    );
  }
}
