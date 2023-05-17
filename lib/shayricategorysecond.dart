import 'package:flutter/material.dart';
import 'package:newshayariapp/shayaricategorythird.dart';

class Shayricategorysecondpage extends StatefulWidget {

  @override
  State<Shayricategorysecondpage> createState() =>
      _ShayricategorysecondpageState();
}

class _ShayricategorysecondpageState extends State<Shayricategorysecondpage> {
  List cat = [
    "Love Shayari",
    "Romantic Shayari",
    "Dard Shayari",
    "Bewafa Shayari",
    "Yaad Shayari",
    "Dosti Shayari",
    "Zindagi Shayari",
    "Funny Shayari",
    "Attitude Shayari",
    "Dua Shayari",
    "Flirt Shayari",
    "Dhokha Shayari"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shayari",
          ),
          backgroundColor: const Color(0xFFff70a6),
          elevation: 5,
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: cat.length,
          itemBuilder: (context, index) {
            return InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Shayaricategorythirdpage(cat,index);
              },));
            },
              child: Card(
                  child: ListTile(
                title: Text("${cat[index]}"),
                subtitle: Row(children: [
                  Container(
                      width: 25,
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        color: Colors.green,
                        Icons.favorite,
                        size: 18,
                      )),
                  Text("Shayari")
                ]),
                leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.redAccent, shape: BoxShape.circle),
                    child: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.white,
                    )),
              )),
            );
          },
        ));
  }
}
