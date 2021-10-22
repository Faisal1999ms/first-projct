import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

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
  final listnew = List<String>.generate(50, (index) {
    return "item $index";
  });
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
        child: ListView.builder(
            itemCount: listnew.length,
            itemBuilder: (cont, ind) {
              final LI = listnew[ind];
              return Dismissible(
                key: Key(LI),
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.delete),
                ),
                child: ListTile(
                  title:
                      Container(alignment: Alignment.center, child: Text(LI)),
                ),
                onDismissed: (DismissDirection di) {
                  if (di == DismissDirection.startToEnd) {
                    setState(() => listnew.removeAt(ind));
                    final snk = SnackBar(
                      content: const Text('Are yuo suore you wont Delete '),
                      action: SnackBarAction(
                        label: 'NO',
                        onPressed: () {
                          setState(() => listnew.insert(ind, LI));
                        },
                      ),
                    );
                    ScaffoldMessenger.of(cont).showSnackBar(snk);
                  } else
                    return null;
                },
                secondaryBackground: Container(
                  color: Colors.green,
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.thumb_up),
                ),
                confirmDismiss: (DismissDirection dico) async {
                  if (dico == DismissDirection.startToEnd) {
                    final str = await showDialog(
                        context: cont,
                        builder: (BuildContext cont) {
                          return AlertDialog(
                            //title: Text("lirjfilakjef  iejfioewf ejfij"),
                            content: Text("lirjfilakjef  iejfioewf ejfij"),

                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(cont).pop();
                                }, // passing false
                                child: Text('No'),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    listnew.removeAt(ind);
                                  });
                                  Navigator.of(cont).pop();
                                }, // passing true
                                child: Text('Yes'),
                              ),
                            ],
                          );
                        });
                    return str;
                  } else
                    return true;
                },
              );
            }),
      ),
    ));
  }
}
