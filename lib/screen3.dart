import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'screen4.dart';

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context3) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen3"),
      ),
      body: Center(
        child: InkWell(
          child: Text(
            "screen3",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          onTap: () {
            return movetoscreen(context3);
          },
        ),
      ),
    );
  }
}

void movetoscreen(BuildContext cont) {
  Navigator.of(cont).pushReplacementNamed('/x4', arguments: {
    "id": 10,
    "Name": "faisal",
  });
}
