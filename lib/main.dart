import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//enum MagicDirection { vertical, horizental }
void main() {
  runApp(MYAPP());
}

class MYAPP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MYAPP2();
  }
}

class MYAPP2 extends State {
  final GlobalKey<FormState> mykey = GlobalKey();
  Map<String, String> _Data = {"Email": "", "pass": ""};
  void switsh() {
    if (ST == stat.ligin) {
      setState(() {
        ST = stat.singup;
      });
    } else
      setState(() {
        ST = stat.ligin;
      });
  }

  void supmit() {
    if (!mykey.currentState.validate())
      return;
    else
      mykey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.black,
          child: Text(
            "thes my pro",
            style: TextStyle(fontSize: 20),
          ),
          title: "my home paj",
        ),
      ),
      body: Center(
        child: Form(
            key: mykey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "inter yuor email", labelText: "E_mail"),
                  validator: (valu) {
                    if (valu.isEmpty || !valu.contains("@")) {
                      return "Email is unvalied";
                    }
                    return null;
                  },
                  onSaved: (valu) {
                    _Data['Email'] = valu;
                  },
                ),
                ElevatedButton(
                  child: Text(ST == stat.ligin ? "login" : "singup"),
                  onPressed: supmit,
                ),
                ElevatedButton(
                  child:
                      Text("${ST == stat.ligin ? "login" : "singup"} instade"),
                  onPressed: switsh,
                )
              ],
            )),
      ),
    ));
  }
}

enum stat { ligin, singup }
stat ST = stat.ligin;
