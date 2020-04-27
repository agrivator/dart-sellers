import 'package:flutter/cupertino.dart';
import '../error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  _launchURL() async {
    const url = 'http://www.agrivator.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white10,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.green, Colors.blue]),),
                      height: size.height*0.153,
                      width: size.width),
                ),), //banner
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Recent Items",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ), //Recent Items
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 15,
                bottom: 5,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5,),
                            child: Material(
                                child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Error())),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(size.height*0.02634)),
                                  child: Image.asset('images/meat.jpg',
                                      height: size.height*0.122485632183908, width: size.width*0.2368055555555572),
                                ),
                              ),
                            ))),
                        SizedBox(height: size.height*0.013,),
                        Text("Item A", style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Material(
                                child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Error())),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(size.height*0.02634)),
                                  child: Image.asset('images/pet.jpg',
                                      height: size.height*0.122485632183908, width: size.width*0.2368055555555572),
                                ),
                              ),
                            ))),SizedBox(height: size.height*0.013,),
                        Text("Item B", style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Material(
                                child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Error())),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(size.height*0.02634)),
                                  child: Image.asset('images/medicines.jpg',
                                      height: size.height*0.122485632183908, width: size.width*0.2368055555555572),
                                ),
                              ),
                            ))),SizedBox(height: size.height*0.013,),
                        Text("Item C", style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Material(
                                child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Error())),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(size.height*0.02634)),
                                  child: Image.asset('images/stationary.jpg',
                                      height: size.height*0.122485632183908, width: size.width*0.2368055555555572),
                                ),
                              ),
                            ))),SizedBox(height: size.height*0.013,),
                        Text("Item D", style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Material(
                                child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Error())),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(size.height*0.02634)),
                                  child: Image.asset('images/food.jpg',
                                      height: size.height*0.122485632183908, width: size.width*0.2368055555555572),
                                ),
                              ),
                            ))),SizedBox(height: size.height*0.013,),
                        Text("Item E", style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Material(
                                child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Error())),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(size.height*0.02634)),
                                  child: Image.asset('images/grocery.jpg',
                                      height: size.height*0.122485632183908, width: size.width*0.2368055555555572),
                                ),
                              ),
                            ))),SizedBox(height: size.height*0.013,),
                        Text("Item F", style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Material(
                                child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Error())),
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(size.height*0.02634)),
                                  child: Image.asset('images/health.jpg',
                                      height: size.height*0.122485632183908, width: size.width*0.2368055555555572),
                                ),
                              ),
                            ))),SizedBox(height: size.height*0.013,),
                        Text("Item G", style: TextStyle(fontSize: 13)),

                      ],
                    ),
                  ],
                ),
              ),
            ), //stores near you icons

            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Text(
                "Order Now",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ), //order now
          ],
        ),
      ),
    );
  }
}

printer(size) {
  debugPrint("Height:" + size.height.toString());
  debugPrint("\nWidth:" + size.width.toString());
}

//I/flutter ( 5416): Height:759.2727272727273
//I/flutter ( 5416):
//I/flutter ( 5416): Width:392.72727272727275
