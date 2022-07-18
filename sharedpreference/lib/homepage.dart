

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatelessWidget {
  void setValues() async {
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();

    sharedPrefs.setString('user_name', 'Ram123');
    sharedPrefs.setString('user_id', '1087');
    sharedPrefs.setString('notification_prefs', 'on');
    print('Values Set in Shared Prefs!!');
  }

  void getValues() async {
    print('Getting Values from shared Preferences');
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    final user_name = sharedPrefs.getString('user_name');
    final user_id = sharedPrefs.getString('user_id');
    final notification_prefs = sharedPrefs.getString('notification_prefs');

    print('user_name: ${user_name}');
    print('user_id: ${user_id}');
    print('notification_prefs: ${notification_prefs}');
  }

  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Prefs Demo'),
      ),
      body: Column(
        children: [
          Container(
            child: RaisedButton(
                child: Text('Set Values'),
                textColor: Colors.white,
                color: Colors.blueAccent,
                onPressed: () {}),
          ),
          Container(
            child: RaisedButton(
                child: Text('Get Values'),
                textColor: Colors.white,
                color: Colors.blueAccent,
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
