import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import 'reusabledrawer.dart';

class SettingsPage extends StatefulWidget {
  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<SettingsPage> {
  Widget buildMeasurementUnits() => SimpleSettingsTile(
      leading: Icon(Icons.device_thermostat),
      title: 'Measurement Units',
      subtitle: 'Mass, Temperature, Volume etc.',
      child: SettingsScreen(
        title: "Measurement Units",
        children: [],
      ));

  Widget buildAppearance() => SimpleSettingsTile(
      leading: Icon(Icons.palette),
      title: 'Appearance',
      subtitle: 'Theme, Colours etc.',
      child: SettingsScreen(
        title: "Appearance",
        children: [],
      ));

  Widget buildNotifications() => SimpleSettingsTile(
      leading: Icon(Icons.notifications),
      title: 'Notifications',
      subtitle: 'Updates, Warning etc.',
      child: SettingsScreen(
        title: "Notifications",
        children: [],
      ));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'), actions: <Widget>[]),
      drawer: myDrawer(context),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SettingsGroup(
            title: 'General',
            children: <Widget>[
              buildMeasurementUnits(),
              buildAppearance(),
              buildNotifications()
            ],
          )
        ],
      )),
    );
  }
}
