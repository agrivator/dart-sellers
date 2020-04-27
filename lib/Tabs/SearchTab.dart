import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final String searchSvg = "images/search.svg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //should be replaced with singlechild scrollview while implementing search
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Material(
            elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: TextField(decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                        hintText: "Search for groceries, stores and more.",
                          hintStyle: TextStyle(fontSize: 13),
                            suffixIcon: Icon(Icons.search),
                      border: InputBorder.none),
                            ),
                        ),
                  Padding(
                    padding: EdgeInsets.only(top: 100, bottom: 100),
                    child: SvgPicture.asset(
                      "images/isearch.svg",
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                  Text(
                    'We have everything you need.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Just search for it!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
        ),
      );
  }
}
