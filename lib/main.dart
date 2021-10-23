import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screen2.dart';
import 'package:flutter_application_1/screen4.dart';
import 'package:get/get.dart';

void main() {
  return (runApp(myapp()));
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myhomepage(),
      routes: {
        '/x4': (context) => screen4(),
      },
    );
  }
}

class myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context1) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen1"),
      ),
      body: Center(
        child: InkWell(
          child: Text(
            "Go to screen2",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          onTap: () => movetoscreen(context1),
        ),
      ),
    );
  }
}

void movetoscreen(BuildContext cont) {
  Navigator.of(cont).push(MaterialPageRoute(builder: (_) {
    return screen2("info rrom screen1");
  }));
}
