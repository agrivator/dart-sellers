import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Notification Settings",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF78b122),
                ),
              ),
              SizedBox(height: 10.0,),
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SwitchListTile(
                    value: _notifications,
                    dense: true,
                    activeColor: Colors.green,
                    title: Text("Enable Notification"),
                    contentPadding: EdgeInsets.all(0.0),
                    onChanged: (bool value) {
                      setState(() {
                        _notifications = value;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
