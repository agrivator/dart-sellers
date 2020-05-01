import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import 'ProfileFormScreen.dart';

class OtpVerificationScreen extends StatefulWidget {
  String phoneNo;

  OtpVerificationScreen({Key key, @required this.phoneNo}) :super(key: key);

  @override
  _OtpVerifyScreenState createState() => _OtpVerifyScreenState(phoneNo);
}

class _OtpVerifyScreenState extends State<OtpVerificationScreen> {
  String phoneNo;

  _OtpVerifyScreenState(this.phoneNo);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Verification Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Please type the verification code sent",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "to" + phoneNo,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: PinCodeTextField(
                    wrapAlignment: WrapAlignment.center,
                    pinBoxDecoration:
                    ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
                    pinBoxHeight: 50,
                    pinTextStyle: TextStyle(
                      fontSize: 15,
                    ),
                    pinBoxWidth: 50,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileFormScreen()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color(0xFF2f2e41),
                    child: Text(
                      'VERIFY',
                      style: TextStyle(
                        color: Color(0xFF78b122),
                        letterSpacing: 1.5,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}