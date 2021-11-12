import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'body.dart';

void main() {
  return (runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        textTheme: ThemeData.dark().textTheme.copyWith(
            bodyText1: TextStyle(color: Colors.black, fontSize: 20),
            bodyText2: TextStyle(color: Colors.black)),
        primaryColor: Colors.blue,
        canvasColor: Color.fromRGBO(240, 240, 240, 1),
        iconTheme: ThemeData.light().iconTheme.copyWith(
              color: Colors.black,
            ),
      ),
      darkTheme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white)),
        primaryColor: Color.fromRGBO(23, 33, 43, 1),
        canvasColor: Color.fromRGBO(14, 22, 33, 1),
        iconTheme: ThemeData.light().iconTheme.copyWith(
              color: Colors.white,
            ),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromRGBO(23, 33, 43, 1),
          title: Text("TELEGRAM"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // return {
                  //   _notifier.value =
                  //       mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light
                  // };
                })
          ],
        ),
        body: tetegrambody(),
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("lib/imges/44.png"),
                          ),
                          Spacer(),
                          IconButton(
                              icon: Icon(
                                Icons.wb_sunny,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  //ThemeMode=Theme(data:ThemeData.dark() , child:null);
                                });
                              })
                        ],
                      ),
                      Spacer(),
                      ListTile(
                        title: Text(
                          "ALFISAL Masalmeh",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        subtitle: Text("+963 99_8217491"),
                        trailing: Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 7,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          listdrwor(
                            "New Group",
                            Icons.group_add,
                          ),
                          listdrwor(
                              "contact point", Icons.person_outline_rounded),
                          listdrwor("Colls", Icons.add_ic_call),
                          listdrwor("People in close proximity",
                              Icons.person_pin_circle),
                          listdrwor("Saved messages", Icons.message),
                          listdrwor("Settings", Icons.settings),
                          listdrwor("Invite Friends", Icons.person_add)
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  ListTile listdrwor(String T, IconData I) {
    return ListTile(
      title: Text(
        T,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      leading: Icon(
        I,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
