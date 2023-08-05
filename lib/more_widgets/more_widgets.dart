import 'package:flutter/material.dart';

class MoreWidgets extends StatefulWidget {
  const MoreWidgets({Key? key}) : super(key: key);

  @override
  State<MoreWidgets> createState() => _MoreWidgetsState();
}

class _MoreWidgetsState extends State<MoreWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('more'),
        // Make sure to import Text from 'package:flutter/material.dart'
        titleTextStyle: const TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
      body: Column(
        children: const [

        ],
      ),
    );
  }
}
