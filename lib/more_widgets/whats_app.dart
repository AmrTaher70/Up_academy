import 'package:flutter/material.dart';

class Whats_app extends StatefulWidget {
  const Whats_app({super.key});

  @override
  State<Whats_app> createState() => _Whats_appState();
}

class _Whats_appState extends State<Whats_app> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('WhatsApp Chat'),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.chat_bubble),
          ],
          bottom: TabBar( // Add the TabBar to the appBar
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.blueGrey,
          child: Column(
            children: const [
              CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://scontent.faly1-2.fna.fbcdn.net/v/t39.30808-1/318779753_8518599401545260_2943219992646001804_n.jpg?stp=c40.0.240.240a_dst-jpg_p240x240&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeE1sWucaMG9FGUvPTHkTWfEwRhZV1Cd1DfBGFlXUJ3UN3weiSwkJpLJzfQM5bQqQpJMPM37cKpWxAqexh8jFYYb&_nc_ohc=MXYyM3lDRyMAX8XZ-5E&_nc_ht=scontent.faly1-2.fna&oh=00_AfA399gWTQX-m56yGBKmBRatvXOTYVgTev3f_dawWXPPWg&oe=64BF0F1D')),
              SizedBox(
                height: 15,
              ),
              Text(
                'Name: Amr Sayed Taher',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'phone: 01102800373',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'email: amrhafiz47@gmail.com',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green),
              ),
            ],
          ),
        ),
        body: TabBarView( // Add the TabBarView to the body
          children: [
            // Tab 1 (Chats) Body
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: const CircleAvatar(),
                    trailing: const Text('Friday'),
                    title: const Text('aly'),
                    subtitle: Row(
                        children: const [Icon(Icons.check), Text('ايه الأخبار؟')]),
                  ),
                  // Add more chat list items here for Tab 1
                ],
              ),
            ),

            // Tab 2 (Status) Body
            SingleChildScrollView(
              child: Column(
                children: [
                  // Add status-related widgets here for Tab 2
                ],
              ),
            ),

            // Tab 3 (Calls) Body
            SingleChildScrollView(
              child: Column(
                children: [
                  // Add call-related widgets here for Tab 3
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
