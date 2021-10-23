import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'screen3.dart';

class screen2 extends StatelessWidget {
  final String str1;
  screen2(this.str1);
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen2"),
      ),
      body: Column(
        children: [
          Text(
            str1,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Center(
            child: InkWell(
              child: Text(
                "Go to screen3",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              onTap: () {
                return movetoscreen(context2);
              },
            ),
          ),
        ],
      ),
    );
  }
}

void movetoscreen(BuildContext cont) {
  Navigator.of(cont).pushReplacement(MaterialPageRoute(builder: (_) {
    return screen3();
  }));
}
