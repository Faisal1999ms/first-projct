import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context4) {
    final ARG =
        ModalRoute.of(context4).settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("screen4"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              " ${ARG['Name']} screen4= ${ARG['id']}",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          IconButton(
            alignment: Alignment.center,
            color: Colors.red,
            padding: EdgeInsets.all(15),
            icon: Icon(Icons.delete),
            onPressed: () {
              Navigator.of(context4).pop();
            },
          ),
        ],
      ),
    );
  }
}

void movetoscreen(BuildContext cont) {
  Navigator.of(cont).pop();
}
