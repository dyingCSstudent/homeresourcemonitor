import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
      //body: _buildGrid(),
    );
  }
}
