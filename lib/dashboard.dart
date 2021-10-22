import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:homeresourcemonitor/devicespage.dart';
import 'package:homeresourcemonitor/homeresources/air.dart';
import 'package:homeresourcemonitor/homeresources/electricity.dart';
import 'package:homeresourcemonitor/homeresources/gas.dart';
import 'package:homeresourcemonitor/homeresources/temperature.dart';
import 'package:homeresourcemonitor/homeresources/water.dart';
import 'package:homeresourcemonitor/settingspage.dart';

import 'reusabledrawer.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WaterDetailsPage()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ElectricityDetailsPage()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GasDetailsPage()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TemperatureDetailsPage()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AirDetailsPage()),
              );
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
      appBar: AppBar(title: Text('Dashboard'), actions: <Widget>[]),
      drawer: myDrawer(context),
      body: _buildGrid(),
    );
  }
}
