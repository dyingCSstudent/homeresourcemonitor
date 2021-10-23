import 'package:flutter/material.dart';
import 'package:homeresourcemonitor/reusabledrawer.dart';

import '../dashboard.dart';

class AnalyticsPage extends StatefulWidget {
  @override
  AnalyticsState createState() => AnalyticsState();
}

class AnalyticsState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Analytics'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
