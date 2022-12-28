import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

bool isSwitched = false;
bool Switched = false;
bool TurnOn = false;
SharedPreferences? _preferences;

Future<bool> onClick() async {
  if (_preferences == null) {
    _preferences = await SharedPreferences.getInstance();

    TurnOn = _preferences!.getBool("turn on") ?? false;
  }
  return TurnOn;
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("themes"),
      ),
      body: FutureBuilder(
        future: onClick(),
        builder: (context, snapshot) => ListTile(
          leading: Text("Turn On"),
          trailing: Switch(
            value: TurnOn,
            onChanged: (value) {
              setState(() {
                TurnOn = value;
                _preferences!.setBool("Turn On", value);
              });
            },
          ),
          subtitle: ElevatedButton(
              onPressed: (() {
                delete();
              }),
              child: Text("clear")),
        ),
      ),
    );
  }

  delete() async {
    _preferences = await SharedPreferences.getInstance();

    await _preferences!.clear();

    setState(() {});
  }
}
