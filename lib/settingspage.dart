import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:homeresourcemonitor/devicespage.dart';

import '../dashboard.dart';
import 'reusabledrawer.dart';

class SettingsPage extends StatefulWidget {
  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<SettingsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
