import 'package:flutter/material.dart';

import 'constants.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// 緯度入力欄のTextEditignController
  TextEditingController latitudeTextController =
      TextEditingController(text: '$default_latitude');

  /// 経度入力欄のTextEditignController
  TextEditingController longitudeTextController =
      TextEditingController(text: '$default_longitude');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(page_offsets),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Text(latitude_label),
                  Expanded(
                    child: TextField(
                      controller: latitudeTextController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(height: middle_space),
              Row(
                children: [
                  Text(longitude_label),
                  Expanded(
                    child: TextField(
                      controller: longitudeTextController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('$latitude_label${latitudeTextController.text}');
          print('$longitude_label${longitudeTextController.text}');
        },
        tooltip: floating_action_button_tooltip,
        child: Icon(Icons.map),
      ),
    );
  }
}
