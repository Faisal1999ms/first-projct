import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(MYAPP());
}

class MYAPP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myappless();
  }
}

class myappless extends State {
  @override
  Widget build(BuildContext context) {
    // double sizeW = MediaQuery.of(context).size.width;
    // double sizeH = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 116, 176, 1),
          title: Row(
            children: [
              Text(
                "in ",
                style: TextStyle(
                    color: Color.fromRGBO(0, 116, 176, 1),
                    backgroundColor: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text("LEARNING"),
              // SizedBox(
              //   width: 200,
              // ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              )
            ],
          ),
          //leading: Icon(Icons.search),
        ),
        body: pages[pagenumeritme],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          currentIndex: pagenumeritme,
          onTap: repag,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Topics"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp), label: "My Learning"),
          ],
        ),
      ),
    );
  }

  void repag(int ind) {
    setState(() {
      pagenumeritme = ind;
    });
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text("in LEARNING"),
          leading: Icon(Icons.search_sharp),
        ),
        body: newMethod1[pagenumeritme],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          currentIndex: pagenumeritme,
          onTap: repag,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Topics"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp), label: "My Learning"),
          ],
        ),
      ));
    }
  }

  int pagenumeritme = 0;

  List<Widget> get newMethod1 {
    pages;
  }

  List<Widget> pages = [
    Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color.fromRGBO(232, 232, 232, 1),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(254, 254, 254, 1),
                        ),
                        margin: EdgeInsets.all(15),
                        width: 370,
                        //padding: EdgeInsets.only(right: 22),
                        alignment: Alignment.center,
                        child: Image.asset(
                          "lib/imges/99.png",
                          fit: BoxFit.fitWidth,
                        ),
                      );
                    },
                    separatorBuilder: (cont, index) => Divider(),
                    itemCount: 70),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                width: double.infinity,
                height: 40,
                color: Color.fromRGBO(254, 254, 254, 1),
                child: Text(
                  "Categoriez",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 320,
                width: double.infinity,
                // color: Color.fromRGBO(254, 254, 254, 1),
                color: Color.fromRGBO(232, 232, 232, 1),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Container(
                          width: 300,
                          height: 270,
                          margin: EdgeInsets.only(right: 10, left: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.account_balance_rounded,
                                  ),
                                  Text("data for all day",
                                      textAlign: TextAlign.left)
                                ],
                              ),
                              Container(
                                // margin: EdgeInsets.only(right: 10, left: 10),
                                height: 280,
                                width: 300,
                                color: Color.fromRGBO(254, 254, 254, 1),
                                child: ListView.separated(
                                    separatorBuilder: ((cotext, index) =>
                                        Divider()),
                                    itemCount: 40,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                          leading: Icon(Icons.access_time),
                                          tileColor: Colors.blue,
                                          title: Text(
                                            "the listView:$index",
                                            textAlign: TextAlign.center,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ));
                                    }),
                              ),
                            ],
                          ),
                        ),

                        // width: double.infinity,
                        // margin: EdgeInsets.only(right: 22),
                        // height: 250,
                      );
                    },
                    separatorBuilder: (cont, index) => Divider(),
                    itemCount: 3),
              ),
            ],
          ),
        ),
      ),
    ),
    Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Browse",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: double.infinity,
            height: 1,
            color: Colors.black38,
          ),
          ListTile(
            leading: Icon(Icons.trending_up_sharp),
            title: Text("Business"),
            subtitle: Text("Bussiness topics from LinkedIn Learning"),
          ),
          Container(
            margin: EdgeInsets.only(left: 70),
            width: double.infinity,
            height: 1,
            color: Colors.black38,
          ),
          ListTile(
            leading: Icon(Icons.create),
            title: Text("Creative"),
            subtitle: Text("Creative topics from LinkedIn Learning"),
          ),
          Container(
            margin: EdgeInsets.only(left: 70),
            width: double.infinity,
            height: 1,
            color: Colors.black38,
          ),
          ListTile(
            leading: Icon(Icons.feed_outlined),
            title: Text("Technology"),
            subtitle: Text("Technology topics from LinkedIn Learning"),
          ),
          Container(
            margin: EdgeInsets.only(left: 70),
            width: double.infinity,
            height: 1,
            color: Colors.black38,
          )
        ],
      ),
    ),
    Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 100,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(254, 254, 254, 1),
                  ),
                  margin: EdgeInsets.all(22),
                  width: double.infinity,
                  //padding: EdgeInsets.only(right: 22),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "lib/imges/99.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Row(
                  children: [
                    Text("somthing alas for my student "),
                    Spacer(),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 5 ? Icons.star : Icons.star_border,
                        );
                      }),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("somthing alas for raeding "),
                    Spacer(),
                    Text("7.5Km")
                  ],
                )
              ],
            );
          },
          separatorBuilder: (cont, index) => Divider(),
          itemCount: 70),
    )
  ];
}
