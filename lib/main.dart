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
              SizedBox(
                width: 300,
              ),
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
      ));
    }
  }

  int pagenumeritme = 0;
//final List<String> item =List.generate(70, (index) => "item:$index");
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
                        width: 350,
                        //padding: EdgeInsets.only(right: 22),
                        alignment: Alignment.center,
                        child: Image.asset(
                          "lib/imges/44.png",
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
                  "Top picks for Faisal",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromRGBO(254, 254, 254, 1),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('lib/imges/imag.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey,
                        ),
                        width: 250,
                        margin: EdgeInsets.only(right: 22),
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
                  "New Releases",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromRGBO(254, 254, 254, 1),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('lib/imges/88.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey,
                        ),
                        width: 250,
                        margin: EdgeInsets.only(right: 22),
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
                  "Live office hours with experts ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromRGBO(254, 254, 254, 1),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('lib/imges/77.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey,
                        ),
                        width: 250,
                        margin: EdgeInsets.only(right: 22),
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
                  "This week's top courses",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromRGBO(254, 254, 254, 1),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('lib/imges/66.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey,
                        ),
                        width: 250,
                        margin: EdgeInsets.only(right: 22),
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
                  "Popular on LinkedIn learning",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Color.fromRGBO(254, 254, 254, 1),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('lib/imges/55.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueGrey,
                        ),
                        width: 250,
                        margin: EdgeInsets.only(right: 22),
                      );
                    },
                    separatorBuilder: (cont, index) => Divider(),
                    itemCount: 70),
              ),
            ],
          ),
        ),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("Page2"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("Page3"),
      ),
    ),
  ];
}
