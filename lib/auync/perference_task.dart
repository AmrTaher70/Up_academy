import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class perference extends StatefulWidget {
  const perference({Key? key}) : super(key: key);

  @override
  State<perference> createState() => _perferenceState();
}

class _perferenceState extends State<perference> {
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _textEditingController3 = TextEditingController();

  @override
  void dispose() {
    _textEditingController1.dispose();
    _textEditingController2.dispose();
    _textEditingController3.dispose();
    super.dispose();
  }

  // Save data to shared preferences
  void _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('data1', _textEditingController1.text);
    prefs.setString('data2', _textEditingController2.text);
    prefs.setString('data3', _textEditingController3.text);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data saved to shared preferences')),
    );
  }

  // Load data from shared preferences and display on screen
  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _textEditingController1.text = prefs.getString('data1') ?? '';
      _textEditingController2.text = prefs.getString('data2') ?? '';
      _textEditingController3.text = prefs.getString('data3') ?? '';
    });
  }

  // Clear data from the screen and shared preferences
  void _clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('data1');
    prefs.remove('data2');
    prefs.remove('data3');
    setState(() {
      _textEditingController1.text = '';
      _textEditingController2.text = '';
      _textEditingController3.text = '';
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data cleared from shared preferences')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Preferences Demo')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController1,
              decoration: InputDecoration(labelText: 'Field 1'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _textEditingController2,
              decoration: InputDecoration(labelText: 'Field 2'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _textEditingController3,
              decoration: InputDecoration(labelText: 'Field 3'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _saveData,
                  child: Text('Save'),
                ),
                ElevatedButton(
                  onPressed: _loadData,
                  child: Text('Load'),
                ),
                ElevatedButton(
                  onPressed: _clearData,
                  child: Text('Clear'),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Display loaded data in a column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Loaded Data:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 8),
                Text('Data 1: ${_textEditingController1.text}'),
                Text('Data 2: ${_textEditingController2.text}'),
                Text('Data 3: ${_textEditingController3.text}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
