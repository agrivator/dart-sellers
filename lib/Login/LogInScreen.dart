import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../HomeScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'LogInWithPhoneNo.dart';


class LogInScreen extends StatelessWidget {
  Widget _buildLogInBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: MediaQuery.of(context).size.width*0.5,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogInWithPhoneNo()),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFF2f2e41),
        child: Text(
          'LOG IN',
          style: TextStyle(
            color: Color(0xFF78b122),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleSignIn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          print("Google signin");
        },
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color(0xFF2f2e41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
              ),
              child: Image(image: AssetImage("logos/google.png"), height: 30.0),
            ),
            Text(
              'Sign in with Google',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF78b122),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFacebookSignIn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          print("Facebook signin");
        },
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color(0xFF2f2e41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child:
              Image(image: AssetImage("logos/facebook.png"), height: 35.0),
            ),
            Text(
              'Sign in with Facebook',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF78b122),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "logos/dart.svg",
                height: 100,
                width: 100,
              ),
              SizedBox(height: 100,),
              _buildLogInBtn(context),
              _buildGoogleSignIn(context),
              _buildFacebookSignIn(context),
              RaisedButton(
                child: Text(
                  "HomeScreen",

                ),
                onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );},
              )
            ],
          ),
        ),
      )),
    );
  }
}
