import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';

import 'OtpVerificationScreen.dart';

class LogInWithPhoneNo extends StatefulWidget {
  @override
  _LogInWithPhoneState createState() => _LogInWithPhoneState();
}

class _LogInWithPhoneState extends State<LogInWithPhoneNo> {

  Country _selectedFilteredDialogCountry = CountryPickerUtils
      .getCountryByPhoneCode('91');
  String _phoneNo;

  void _openFilteredCountryPickerDialog() =>
      showDialog(
        context: context,
        builder: (context) =>
            Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.pink),
                child: CountryPickerDialog(
                    titlePadding: EdgeInsets.all(8.0),
                    searchCursorColor: Colors.lightGreenAccent,
                    searchInputDecoration: InputDecoration(
                        hintText: 'Search...'),
                    isSearchable: true,
                    title: Text('Select your country code'),
                    onValuePicked: (Country country) =>
                        setState(() =>
                        _selectedFilteredDialogCountry = country),
                    itemBuilder: _buildDialogItem)),
      );

  Widget _buildDialogItem(Country country) =>
      Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(width: 8.0),
          Text("+${country.phoneCode}"),
          SizedBox(width: 8.0),
          Flexible(child: Text(country.name))
        ],
      );


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xF12F2E41),
                  child: Icon(
                    Icons.phone_android,
                    size: 100.0,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ListTile(
                        onTap: _openFilteredCountryPickerDialog,
                        title: _buildDialogItem(_selectedFilteredDialogCountry),
                        trailing: Icon(Icons.arrow_drop_down),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 14.0, right: 14.0, left: 14.0),
                          hintText: 'Enter Phone No',
                        ),
                        onChanged: (String phoneNo) {
                          _phoneNo = "+" +
                              _selectedFilteredDialogCountry.phoneCode
                                  .toString() + phoneNo;
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "*Phone No Required";
                          }
                        },
                      ),
                      Text(
                        "We will send you a One Time SMS message\nCarrier rates may apply",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10),
                      ),
                      RaisedButton(
                        elevation: 5.0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    OtpVerificationScreen(phoneNo: _phoneNo,)),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xFF2f2e41),
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            color: Color(0xFF78b122),
                            letterSpacing: 1.5,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
