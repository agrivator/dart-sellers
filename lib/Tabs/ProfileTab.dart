import 'package:dartsellers/Tabs/ProfileTab/ContactUs.dart';
import 'package:dartsellers/Tabs/ProfileTab/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProfileTab/About.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileTab> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your Profile",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF78b122),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/storea.jpg"),
                    radius: 60.0,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF2f2e41),
                        child: GestureDetector(
                          onTap: () => {print("change profile photo")},
                          child: new Icon(
                            Icons.camera_alt,
                            color: Color(0xFF78b122),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        enabled: _status,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Store Name",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.store),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Store Name required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Owner Name",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Store Name required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Email required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        enabled: _status,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Phone No",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.phone_android),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Phone No required';
                          }
                        },
                        //onSaved to be implemented
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          hintText: "Address",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.add_location),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return '*Address required';
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ContactUs()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "Contact Us",
                          style: TextStyle(color: Color(0xFF78b122)),
                        ),
                        borderSide: BorderSide(color: Color(0xFF78b122)),
                      ),
                      OutlineButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "About",
                          style: TextStyle(color: Color(0xFF78b122)),
                        ),
                        borderSide: BorderSide(color: Color(0xFF78b122)),
                      ),
                      OutlineButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),
                          );
                        },
                        borderSide: BorderSide(color: Color(0xFF78b122)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          "Settings",
                          style: TextStyle(color: Color(0xFF78b122)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
