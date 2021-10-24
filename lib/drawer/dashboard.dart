import 'package:flutter/material.dart';
import 'package:homeresourcemonitor/homeresources/air.dart';
import 'package:homeresourcemonitor/homeresources/electricity.dart';
import 'package:homeresourcemonitor/homeresources/gas.dart';
import 'package:homeresourcemonitor/homeresources/internet.dart';
import 'package:homeresourcemonitor/homeresources/temperature.dart';
import 'package:homeresourcemonitor/homeresources/water.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'reusabledrawer.dart';

class DashboardPage extends StatefulWidget {
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  Widget _buildGrid() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 7,
      mainAxisSpacing: 7,
      crossAxisCount: 2,
      children: <Widget>[
        Material(
          color: Colors.blue[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WaterDetailsPage()),
              );
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Water",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 18)),
                  const SizedBox(
                    height: 5,
                  ),
                  CircularPercentIndicator(
                    radius: 115.0,
                    lineWidth: 10.0,
                    percent: 0.4,
                    //header: const Text("Icon header"),
                    center: const Icon(
                      Icons.water,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.white,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "215 / 538 L",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.amber[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ElectricityDetailsPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Electricty",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 18)),
                  const SizedBox(
                    height: 5,
                  ),
                  CircularPercentIndicator(
                    radius: 115.0,
                    lineWidth: 10.0,
                    percent: 0.7,
                    //header: const Text("Icon header"),
                    center: const Icon(
                      Icons.bolt,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    backgroundColor: (Colors.grey),
                    progressColor: Colors.white,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "215 / 538 Watts",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.green[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GasDetailsPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Gas",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 18)),
                  const SizedBox(
                    height: 5,
                  ),
                  CircularPercentIndicator(
                    radius: 115.0,
                    lineWidth: 10.0,
                    percent: 0.5,
                    //header: const Text("Icon header"),
                    center: const Icon(
                      Icons.fireplace,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.white,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "215 / 538 BTU",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.deepOrange[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TemperatureDetailsPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Temperature",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 18)),
                  const SizedBox(
                    height: 5,
                  ),
                  CircularPercentIndicator(
                    radius: 115.0,
                    lineWidth: 10.0,
                    percent: 0.3,
                    //header: const Text("Icon header"),
                    center: const Icon(
                      Icons.thermostat,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.white,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "215 / 538 °C",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.indigo[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AirDetailsPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Air Quality",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 18)),
                  const SizedBox(
                    height: 5,
                  ),
                  CircularPercentIndicator(
                    radius: 115.0,
                    lineWidth: 10.0,
                    percent: 0.2,
                    //header: const Text("Icon header"),
                    center: const Icon(
                      Icons.air,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.white,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "215 / 538 µg/m3",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: Colors.blueGrey[500],
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InternetDetailsPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Internet",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CircularPercentIndicator(
                    radius: 115.0,
                    lineWidth: 10.0,
                    percent: 0.75,
                    //header: const Text("Icon header"),
                    center: const Icon(
                      Icons.wifi,
                      size: 50.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.grey,
                    progressColor: Colors.white,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("215 / 538 GB",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 18)),
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
      appBar: AppBar(title: const Text('Dashboard'), actions: const <Widget>[]),
      drawer: myDrawer(context),
      body: _buildGrid(),
    );
  }
}
