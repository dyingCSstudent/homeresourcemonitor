import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:homeresourcemonitor/reusabledrawer.dart';

import '../dashboard.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
