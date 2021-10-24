import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:homeresourcemonitor/drawer/reusabledrawer.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<ProfilePage> {
  Widget buildUsername() => SimpleSettingsTile(
      leading: Icon(Icons.login),
      title: 'Username',
      subtitle: 'Change Username, Login via Email etc',
      child: SettingsScreen(
        title: "Username",
        children: [],
      ));

  Widget buildEmail() => SimpleSettingsTile(
      leading: Icon(Icons.email),
      title: 'Email',
      subtitle: 'Change Email, Add Email etc',
      child: SettingsScreen(
        title: "Email",
        children: [],
      ));

  Widget buildSecurity() => SimpleSettingsTile(
      leading: Icon(Icons.lock),
      title: 'Security',
      subtitle: 'Change Password, Two Factor Authentication etc',
      child: SettingsScreen(
        title: "Security",
        children: [],
      ));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), actions: <Widget>[]),
      drawer: myDrawer(context),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SettingsGroup(
            title: 'General',
            children: <Widget>[buildUsername(), buildEmail(), buildSecurity()],
          )
        ],
      )),
    );
  }
}
