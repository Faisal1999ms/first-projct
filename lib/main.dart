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
    ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.light);
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: _notifier,
        builder: (_, mode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            theme: ThemeData(
              primaryColor: Colors.blue,
              canvasColor: Color.fromRGBO(240, 240, 240, 1),
            ),
            darkTheme: ThemeData(
              textTheme:
                  Theme.of(context).textTheme.apply(bodyColor: Colors.white),
              primaryColor: Color.fromRGBO(23, 33, 43, 1),
              canvasColor: Color.fromRGBO(14, 22, 33, 1),
              iconTheme: Theme.of(context).iconTheme.copyWith(
                    color: Colors.white,
                  ),
            ),
            home: Homepage(),
          );
        });
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

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
                              onPressed: () {})
                        ],
                      ),
                      Spacer(),
                      ListTile(
                        title: Text(
                          "ALFISAL Masalmeh",
                          style: TextStyle(fontSize: 20),
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
      title: Text(T),
      leading: Icon(
        I,
        color: Colors.white,
      ),
    );
  }
}
