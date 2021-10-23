import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'devicespage.dart';
import 'profile.dart';
import 'settingspage.dart';

Widget myDrawer(BuildContext context) {
  return Container(
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_chart_outlined_rounded),
            title: const Text('Analytics'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MetersPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
    ),
  );
}
