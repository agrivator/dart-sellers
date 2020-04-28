import 'package:flutter/cupertino.dart';
import '../error.dart';
import 'package:flutter/material.dart';
import '../HomePageTabs/NestedTabBar.dart';
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
                            colors: [Color(0xffEDF5E0), Color(0xffA4CF70)],
                        begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                    ),
                      height: size.height*0.18,
                      width: size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width*0.035),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Image.asset(
                              "images/storec.jpg",
                              height: size.height*0.12,
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: "Store A\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "X Street, Y, India\n\nOwner: Mr. A",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black
                                  ),
                                ),
                              ]
                            ),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ),
                  ),
                ),), //banner
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Items",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ), //Items
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: NestedTabBar(),
            ), //Tabs
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
