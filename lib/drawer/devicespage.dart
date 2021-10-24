import 'package:flutter/material.dart';
import 'reusabledrawer.dart';

class MetersPage extends StatefulWidget {
  @override
  MetersState createState() => MetersState();
}

class DeviceItem {
  String name;
  String type;
  int imagetype;

  DeviceItem({required this.name, required this.type, required this.imagetype});
}

class MetersState extends State<MetersPage> {
  List<DeviceItem> device_item = [
    DeviceItem(
      name: "Water Meter 1",
      type: "Water",
      imagetype: 1,
    ),
    DeviceItem(
      name: "Temperature Meter 1",
      type: "Temperature",
      imagetype: 4,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Devices'), actions: <Widget>[
        IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('This is the button to add a device')));
            },
            icon: const Icon(
              Icons.add_box_outlined,
              size: 30,
            ))
      ]),
      drawer: myDrawer(context),
      body: ListView.builder(
          itemCount: device_item.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(device_item[index].name),
                      content: Text('Type: ' + device_item[index].type),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Edit'),
                          child: const Text('Edit'),
                        ),
                      ],
                    ),
                  ),
                  title: Text(device_item[index].name),
                  leading: Icon(
                    device_item[index].imagetype == 1
                        ? Icons.water
                        : Icons.thermostat,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
