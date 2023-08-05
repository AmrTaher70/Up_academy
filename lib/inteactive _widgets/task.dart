import 'package:flutter/material.dart';
import 'package:up_course2/inteactive%20_widgets/task.dart';

class Task extends StatefulWidget {
  const Task({Key? key});

  @override
  State<Task> createState() => TaskState();
}

class TaskState extends State<Task> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print('Initial');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _titleController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusinessCardScreen(
                          name: _nameController.text,
                          title: _titleController.text,
                          email: _emailController.text,
                          phone: _phoneController.text,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  final String name;
  final String title;
  final String email;
  final String phone;

  const BusinessCardScreen({
    required this.name,
    required this.title,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-1/318779753_8518599401545260_2943219992646001804_n.jpg?stp=c40.0.240.240a_dst-jpg_p240x240&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeE1sWucaMG9FGUvPTHkTWfEwRhZV1Cd1DfBGFlXUJ3UN3weiSwkJpLJzfQM5bQqQpJMPM37cKpWxAqexh8jFYYb&_nc_ohc=MXYyM3lDRyMAX8XZ-5E&_nc_ht=scontent.faly1-2.fna&oh=00_AfA399gWTQX-m56yGBKmBRatvXOTYVgTev3f_dawWXPPWg&oe=64BF0F1D')),
              Text('Name: $name'),
              Text('Title: $title'),
              Text('Email: $email'),
              Text('Phone: $phone'),
            ],
          ),
        ),
      ),
    );
  }
}
