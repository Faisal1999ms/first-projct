import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tetegrambody extends StatelessWidget {
  const tetegrambody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: li.length,
        itemBuilder: (context, ind) {
          return ListTile(
            title: Text(li[ind].te),
            subtitle: Text(
              "Telecom&Network Tutorials",
              style: TextStyle(color: Colors.white54),
            ),
            leading: CircleAvatar(
              backgroundImage: li[ind].im,
            ),
            trailing: CircleAvatar(
              radius: 10,
              child: Center(
                  child: Text(
                "${li[ind].num}",
                style: TextStyle(fontSize: 10),
              )),
            ),
          );
        },
        separatorBuilder: ((cotext, index) => Divider(
              height: 5,
              color: Colors.black,
            )),
      ),
    );
  }
}

final List<info> li = [
  info(im: AssetImage("lib/imges/33.jpg"), num: 10, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/55.jpg"), num: 11, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/66.jpg"), num: 12, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/77.jpg"), num: 13, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 14, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 14, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 20, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 194, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 14, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 56, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 61, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 3, te: "EEE-Books shope"),
  info(im: AssetImage("lib/imges/88.jpg"), num: 5, te: "EEE-Books shope"),
];

class info {
  AssetImage im;
  String te;
  int num;
  info({@required this.im, @required this.num, @required this.te});
}
