import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool isSwitched = false;
  bool _Switched = true;
  bool showLoading = false;
  bool Setting1 = false;
  SharedPreferences? _preferences;
  bool Setting2 = false;
  SharedPreferences? preferences;

  bool get _Setting1 => Setting1;

  Future<bool> onSetting() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
      Setting1 = _preferences!.getBool("Setting1") ?? false;
    }
    return Setting1;
  }

  Future<bool> onSettings() async {
    if (preferences == null) {
      preferences = await SharedPreferences.getInstance();
      Setting2 = preferences!.getBool("Setting2") ?? false;
    }
    return Setting2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [],
      ),
      body: Column(
        children: <Widget>[
          FutureBuilder(
              future: onSetting(),
              builder: ((context, snapshot) => ListTile(
                    leading: Text("Setting1"),
                    trailing: Switch(
                      value: Setting1,
                      onChanged: (value) {
                        setState(() {
                          Setting1 = value;
                          _preferences!.setBool("Setting1", value);
                        });
                      },
                    ),
                  ))),
          FutureBuilder(
              future: onSettings(),
              builder: ((context, snapshot) => ListTile(
                    leading: Text("Setting2"),
                    trailing: Switch(
                      value: Setting2,
                      onChanged: (value) {
                        setState(() {
                          Setting2 = value;
                          preferences!.setBool("Setting2", value);
                        });
                      },
                    ),
                    subtitle: ElevatedButton(
                        onPressed: (() {
                          delete();
                        }),
                        child: Text("clear")),
                  ))),
        ],
      ),
    );
  }

  delete() async {
    _preferences = await SharedPreferences.getInstance();

    await _preferences!.clear();

    setState(() {});
  }
}
