import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../dashboard.dart';
import '../reusabledrawer.dart';

class InternetDetailsPage extends StatefulWidget {
  @override
  InternetDetailsState createState() => InternetDetailsState();
}

class InternetDetailsState extends State<InternetDetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Internet'), actions: <Widget>[]),
      drawer: myDrawer(context),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: Container(
                width: 200,
                height: 32,
                /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                child: const Text(
                  "Internet",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: Container(
              width: 200,
              child: CircularPercentIndicator(
                radius: 200.0,
                lineWidth: 10.0,
                percent: 0.4,
                //header: const Text("Icon header"),
                center: const Icon(
                  Icons.wifi,
                  size: 75.0,
                  color: Colors.black,
                ),
                backgroundColor: Colors.grey,
                progressColor: Colors.black,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "215 / 538 GB",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Center(
            child: Container(
              width: 330,
              height: 300,
              /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
              child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: [
                    const Center(
                      child: Text(
                        " Room 1",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      width: 330,
                      lineHeight: 16.0,
                      percent: 0.5,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.black,
                      center: const Text("50 / 100",
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        " Room 2",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      width: 330,
                      lineHeight: 16.0,
                      percent: 0.65,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.black,
                      center: const Text("65 / 100",
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        " Room 3",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      width: 330,
                      lineHeight: 16.0,
                      percent: 0.24,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.black,
                      center: const Text("24 / 100",
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        " Room 4",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      width: 330,
                      lineHeight: 16.0,
                      percent: 0.76,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.black,
                      center: const Text(
                        "76 / 100",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ])),
    );
  }
}
