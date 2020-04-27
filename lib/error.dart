
import 'package:flutter/material.dart';

class Error extends StatefulWidget {
  @override
  _ErrorState createState() => _ErrorState();
}

class _ErrorState extends State<Error> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Container(
      child: Center(
        child: Text("Error 404! \nPage not Built.",style: TextStyle(fontSize: 27),textAlign: TextAlign.center,),
      ),
    ));
  }
}
