import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class DashboardPage extends StatefulWidget {
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  Widget _buildGrid() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Material(
          color: Colors.blue[300],
          child: InkWell(
            onTap: () {
              print('1 was clicked');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Text("Water"),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.yellow[400],
          child: InkWell(
            onTap: () {
              print('1 was clicked');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Text("Electricty"),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.green[300],
          child: InkWell(
            onTap: () {
              print('1 was clicked');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Text("Gas"),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.orange[300],
          child: InkWell(
            onTap: () {
              print('1 was clicked');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Text("Temperature"),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.indigo[300],
          child: InkWell(
            onTap: () {
              print('1 was clicked');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Text("Air Quality"),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.blueGrey[300],
          child: InkWell(
            onTap: () {
              print('1 was clicked');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Text("Internet"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WordPair Generator'), actions: <Widget>[]),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: const Text('Dashboard'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.insert_chart_outlined_rounded),
                title: const Text('Analytics'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 7),
              Divider(
                color: Colors.grey[600],
                thickness: 1.5,
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(height: 7),
              ListTile(
                leading: Icon(Icons.devices_rounded),
                title: const Text('Meter Devices'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: _buildGrid(),
    );
  }
}
