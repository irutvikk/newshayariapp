import 'package:flutter/material.dart';
import 'package:newshayariapp/gridviewshayari.dart';
import 'package:newshayariapp/shayricategorysecond.dart';

void main() {
  runApp(const MaterialApp(
    home: Firstpage(),
  ));
}

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List imagelist = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpeg",
    "images/6.jpg",
    "images/6.jpg",
  ];
  List catlist = [
    "Ghazal",
    "Shayar",
    "Rahat Indori",
    "Mirza Galib",
    "Ghazal Geet",
    "Love Shayari",
    "Dosti Shayari"
  ];

  List gridlist = [
    "Ghazal",
    "Shayar",
    "Rahat Indori",
    "Mirza Galib",
    "Ghazal Geet",
    "Love Shayari",
    "Dosti Shayari"
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Shayricategorysecondpage();
                    },));
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset("images/maincat.jpg",width: double.infinity,fit: BoxFit.fill,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Shayari Category",style: TextStyle(fontSize: 18),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: catlist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0,
                mainAxisExtent: 160,
              ),
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    // splashColor: Colors.transparent,
                    // highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return gridviewshayari(gridlist,index);
                      },));
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("${imagelist[index]}",fit: BoxFit.fill,width: double.infinity),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${catlist[index]}",style: TextStyle(fontSize: 18),),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
