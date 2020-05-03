import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class OrderTab extends StatefulWidget {
  @override
  _OrderTabState createState()=> _OrderTabState();
}
class _OrderTabState extends State<OrderTab> {
  var x=[1,1,1,1,1];
  var value1=[[true,true,true],[true,true,true],[true,true,true],[true,true,true],[true,true,true]];
  Timer _timer1,_timer2,_timer3,_timer4,_timer5,_timer;
  var _start = [1210,1210,1210,1210,1210];
  String _printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  Future _showNotificationWithDefaultSound() async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High);
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Alert',
      'Time to pack is about to over\nOpen app to see the details',
      platformChannelSpecifics,
      payload: 'Default_Sound',
    );
  }
  Future selectNotification(String payload) async {
    showDialog(
      context: context,
      builder: (_) {
        return new AlertDialog(
          title: Text("Alert"),
          content: Text("Open the app to confirm your status"),
        );
      },
    );
  }
  @override
  initState() {
    super.initState();
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    // If you have skipped STEP 3 then change app_icon to @mipmap/ic_launcher
    var initializationSettingsAndroid = new AndroidInitializationSettings('dart');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  Timer timeGenerator(int i){
    const oneSec = const Duration(seconds: 1);
    return Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start[i]<= 0) {
            timer.cancel();
          } else {
            _start[i] = _start[i] - 1;
            if(_start[i]==1200){
              _showNotificationWithDefaultSound();
            }
          }
        },
      ),
    );
  }
  void startTimer(int i) {
    switch(i) {
      case 0:
        _timer1 = timeGenerator(0);
        break;
      case 1:
        _timer2 = timeGenerator(1);
        break;
      case 2:
        _timer3 = timeGenerator(2);
        break;
      case 3:
        _timer4 = timeGenerator(3);
        break;
      case 4:
        _timer5 = timeGenerator(4);
        break;
    }
  }
  @override
  void dispose() {
    _timer1.cancel();
    _timer2.cancel();
    _timer3.cancel();
    _timer4.cancel();
    _timer5.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
          child: Column(
          children : <Widget>[
            x[0]!=0?
          Container(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: ExpansionTile(
                        title: ListTile(
                          contentPadding: EdgeInsets.all(5.0),
                          leading: Icon(Icons.shopping_cart),
                          title: Text("Order #123445662"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Divider(
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text("27 April 2020 10:20 am"),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Bivin Varkey Varghese'),
                              SizedBox(
                                height: 10.0,
                              ),
                              x[0]!=4?
                              Row(
                                children: <Widget>[
                                  Text('Order:'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5,right: 5),
                                  child: ButtonTheme(
                                    minWidth: 8,
                                  height: 5,
                                  child: RaisedButton(
                                    elevation: 5.0,
                                    onPressed: x[0]==1?(){
                                      startTimer(0);
                                    setState(()=>x[0]++);
                                    }:x[0]==2?()
                                    {_timer1.cancel();setState(()=>x[0]++);}:()=>setState(()=>x[0]++),
                                    padding: EdgeInsets.all(15.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    color: Colors.green,
                                    child: Text(
                                      x[0]==1?'Accept':x[0]==2?'Pack':'Dispatch',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'OpenSans',
                                      ),
                                    ),
                                  ),
                                  ),
                                  ),
                                  x[0]==1?
                                      ButtonTheme(
                                        minWidth: 8,
                                  height: 5,
                                  child: RaisedButton(
                                    elevation: 5.0,
                                    onPressed: ()=>setState(()=>x[0]=0),
                                    padding: EdgeInsets.all(15.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    color: Colors.red,
                                    child: Text(
                                      'Reject',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'OpenSans',
                                      ),
                                    ),
                                  ),
                                      ): new Container(),
                                ],
                              ): new Container(),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Text('Status: '),
                                  Text(x[0]==1?'Not accepted yet!'
                                      :x[0]==2&&_start[0]!=0?'Accepted':_start[0]==0&&x[0]==2?'Packing delayed':
                                  x[0]==3?'Packed':'Completed',style:
                                  TextStyle(color: _start[0]==0&&x[0]==2?Colors.red:x[0]==4?Colors.green:Colors.black ,
                                     ),)
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              x[0]==2&&_start[0]>0?
                              Row(
                                children: <Widget>[
                                  Text('Time to Pack:'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                  child: CircularPercentIndicator(
                                    radius: 90.0,
                                    lineWidth: 8.0,
                                    animation: false,
                                    percent: _start[0]/3600,
                                    center: new Text(
                                        _printDuration(Duration(seconds: _start[0])),
                                      style:
                                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.green),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.green,
                                    backgroundColor: Colors.white,
                                  ),
                                  ),
                                ],
                              ):new Container(),
                              SizedBox(
                                height: 10.0,
                              ),
                              LinearPercentIndicator(
                                width: 180.0,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 8.0,
                                percent: x[0]==1?0.0:x[0]==2?0.35:x[0]==3?0.70:1.0,
                                linearStrokeCap: LinearStrokeCap.butt,
                                progressColor: Colors.green,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text("Bill Amount    \u20B9150"),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('Delivered by :  ABCD'),
                            ],
                          ),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Items'),
                                Divider(
                                  color: Colors.black,
                                ),
                                Row(
                                  children : <Widget>[
                                    Image.asset(
                                      'images/food.jpg',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Padding(
                                      padding:const EdgeInsets.only(left: 5,right: 5),
                                child: Text(
                                  "Item1",
                                ),
                                    ),
                                    Padding(
                                      padding:const EdgeInsets.only(left: 5,right: 5),
                                      child: Text(
                                        "250g",
                                      ),
                                    ),
                                    Padding(
                                      padding:const EdgeInsets.only(left: 5,right: 5),
                                      child: Checkbox(
                                        checkColor: Color(0xFFFFFFFF),
                                        activeColor: Color(0xff78b122),
                                        value: value1[0][0],
                                        onChanged: (bool value)=>setState(()=>value1[0][0]=value),
                                      )
                                    ),
                                ]
                                ),
                                Row(
                                    children : <Widget>[
                                      Image.asset(
                                        'images/food.jpg',
                                        width: 30,
                                        height: 30,
                                      ),
                                      Padding(
                                        padding:const EdgeInsets.only(left: 5,right: 5),
                                        child: Text(
                                          "Item2",
                                        ),
                                      ),
                                      Padding(
                                        padding:const EdgeInsets.only(left: 5,right: 5),
                                        child: Text(
                                          "1kg",
                                        ),
                                      ),
                                      Padding(
                                          padding:const EdgeInsets.only(left: 14,right: 5),
                                          child: Checkbox(
                                            checkColor: Color(0xFFFFFFFF),
                                            activeColor: Color(0xff78b122),
                                            value: value1[0][1],
                                            onChanged: (bool value)=>setState(()=>value1[0][1]=value),
                                          )
                                      ),
                                    ]
                                ),
                                Row(
                                    children : <Widget>[
                                      Image.asset(
                                        'images/food.jpg',
                                        width: 30,
                                        height: 30,
                                      ),
                                      Padding(
                                        padding:const EdgeInsets.only(left: 5,right: 5),
                                        child: Text(
                                          "Item3",
                                        ),
                                      ),
                                      Padding(
                                        padding:const EdgeInsets.only(left: 5,right: 5),
                                        child: Text(
                                          "500g",
                                        ),
                                      ),
                                      Padding(
                                          padding:const EdgeInsets.only(left: 5,right: 5),
                                          child: Checkbox(
                                            checkColor: Color(0xFFFFFFFF),
                                            activeColor: Color(0xff78b122),
                                            value: value1[0][2],
                                            onChanged: (bool value)=>setState(()=>value1[0][2]=value),
                                          )
                                      ),
                                    ]
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ):new Container(),
            x[1]!=0?
            Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: ExpansionTile(
                  title: ListTile(
                    contentPadding: EdgeInsets.all(5.0),
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Order #123445663"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("27 April 2020 12:20 pm"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Vyshnav P'),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[1]!=4?
                        Row(
                          children: <Widget>[
                            Text('Order:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                              child: ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: x[1]==1?(){
                                  startTimer(1);
                                  setState(()=>x[1]++);
                                }:x[1]==2?()
                                {_timer2.cancel();setState(()=>x[1]++);}:()=>setState(()=>x[1]++),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.green,
                                child: Text(
                                  x[1]==1?'Accept':x[1]==2?'Pack':'Dispatch',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                            ),
                            ),
                            x[1]==1?
                            ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: ()=>setState(()=>x[1]=0),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.red,
                                child: Text(
                                  'Reject',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                            ): new Container(),
                          ],
                        ): new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[1]==1?'Not accepted yet!'
                                :x[1]==2&&_start[1]!=0?'Accepted':_start[1]==0&&x[1]==2?'Packing delayed':
                            x[1]==3?'Packed':'Completed',style:
                            TextStyle(color: _start[1]==0&&x[1]==2?Colors.red:x[1]==4?Colors.green:Colors.black ,
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[1]==2&&_start[1]>0?
                        Row(
                          children: <Widget>[
                            Text('Time to Pack:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircularPercentIndicator(
                                radius: 90.0,
                                lineWidth: 8.0,
                                animation: false,
                                percent: _start[1]/3600,
                                center: new Text(
                                  _printDuration(Duration(seconds: _start[1])),
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.green),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.green,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ):new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 180.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 8.0,
                          percent: x[1]==1?0.0:x[1]==2?0.35:x[1]==3?0.70:1.0,
                          linearStrokeCap: LinearStrokeCap.butt,
                          progressColor: Colors.green,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Bill Amount    \u20B9150"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Delivered by :  ABCD'),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Items'),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item1",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "250g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[1][0],
                                      onChanged: (bool value)=>setState(()=>value1[1][0]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item2",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "1kg",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 14,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[1][1],
                                      onChanged: (bool value)=>setState(()=>value1[1][1]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item3",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "500g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[1][2],
                                      onChanged: (bool value)=>setState(()=>value1[1][2]=value),
                                    )
                                ),
                              ]
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ):new Container(),
            x[2]!=0?
            Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: ExpansionTile(
                  title: ListTile(
                    contentPadding: EdgeInsets.all(5.0),
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Order #123445664"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("27 April 2020 05:30 pm"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Smaran Ponnappa'),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[2]!=4?
                        Row(
                          children: <Widget>[
                            Text('Order:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                            child: ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: x[2]==1?(){
                                  startTimer(2);
                                  setState(()=>x[2]++);
                                }:x[2]==2?()
                                {_timer3.cancel();setState(()=>x[2]++);}:()=>setState(()=>x[2]++),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.green,
                                child: Text(
                                  x[2]==1?'Accept':x[2]==2?'Pack':'Dispatch',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                            ),
                            ),
                            x[2]==1?
                            ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: ()=>setState(()=>x[2]=0),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.red,
                                child: Text(
                                  'Reject',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                            ): new Container(),
                          ],
                        ): new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[2]==1?'Not accepted yet!'
                                :x[2]==2&&_start[2]!=0?'Accepted':_start[2]==0&&x[2]==2?'Packing delayed':
                            x[2]==3?'Packed':'Completed',style:
                            TextStyle(color: _start[2]==0&&x[2]==2?Colors.red:x[2]==4?Colors.green:Colors.black ,
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[2]==2&&_start[2]>0?
                        Row(
                          children: <Widget>[
                            Text('Time to Pack:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircularPercentIndicator(
                                radius: 90.0,
                                lineWidth: 8.0,
                                animation: false,
                                percent: _start[2]/3600,
                                center: new Text(
                                  _printDuration(Duration(seconds: _start[2])),
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.green),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.green,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ):new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 180.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 8.0,
                          percent: x[2]==1?0.0:x[2]==2?0.35:x[2]==3?0.70:1.0,
                          linearStrokeCap: LinearStrokeCap.butt,
                          progressColor: Colors.green,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Bill Amount    \u20B9150"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Delivered by :  ABCD'),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Items'),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item1",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "250g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[2][0],
                                      onChanged: (bool value)=>setState(()=>value1[2][0]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item2",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "1kg",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 14,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[2][1],
                                      onChanged: (bool value)=>setState(()=>value1[2][1]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item3",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "500g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[2][2],
                                      onChanged: (bool value)=>setState(()=>value1[2][2]=value),
                                    )
                                ),
                              ]
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ): new Container(),
            x[3]!=0?
            Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: ExpansionTile(
                  title: ListTile(
                    contentPadding: EdgeInsets.all(5.0),
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Order #123445665"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("27 April 2020 07:20 pm"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sarath S'),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[3]!=4?
                        Row(
                          children: <Widget>[
                            Text('Order:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                            child: ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: x[3]==1?(){
                                  startTimer(3);
                                  setState(()=>x[3]++);
                                }:x[3]==2?()
                                {_timer4.cancel();setState(()=>x[3]++);}:()=>setState(()=>x[3]++),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.green,
                                child: Text(
                                  x[3]==1?'Accept':x[3]==2?'Pack':'Dispatch',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'OpenSans',
                                  ),
                                ),

                              ),
                            ),
                            ),
                            x[3]==1?
                            ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: ()=>setState(()=>x[3]=0),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.red,
                                child: Text(
                                  'Reject',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                            ): new Container(),
                          ],
                        ): new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[3]==1?'Not accepted yet!'
                                :x[3]==2&&_start[3]!=0?'Accepted':_start[3]==0&&x[3]==2?'Packing delayed':
                            x[3]==3?'Packed':'Completed',style:
                            TextStyle(color: _start[3]==0&&x[3]==2?Colors.red:x[3]==4?Colors.green:Colors.black ,
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[3]==2&&_start[3]>0?
                        Row(
                          children: <Widget>[
                            Text('Time to Pack:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircularPercentIndicator(
                                radius: 90.0,
                                lineWidth: 8.0,
                                animation: false,
                                percent: _start[3]/3600,
                                center: new Text(
                                  _printDuration(Duration(seconds: _start[3])),
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.green),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.green,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ):new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 180.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 8.0,
                          percent: x[3]==1?0.0:x[3]==2?0.35:x[3]==3?0.70:1.0,
                          linearStrokeCap: LinearStrokeCap.butt,
                          progressColor: Colors.green,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Bill Amount    \u20B9150"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Delivered by :  ABCD'),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Items'),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item1",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "250g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[3][0],
                                      onChanged: (bool value)=>setState(()=>value1[3][0]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item2",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "1kg",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 14,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[3][1],
                                      onChanged: (bool value)=>setState(()=>value1[3][1]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item3",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "500g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[3][2],
                                      onChanged: (bool value)=>setState(()=>value1[3][2]=value),
                                    )
                                ),
                              ]
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ): new Container(),
            x[4]!=0?
            Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: ExpansionTile(
                  title: ListTile(
                    contentPadding: EdgeInsets.all(5.0),
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Order #123445666"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("27 April 2020 10:20 pm"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Akul Santhosh'),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[0]!=4?
                        Row(
                          children: <Widget>[
                            Text('Order:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                            child: ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: x[4]==1?(){
                                  startTimer(4);
                                  setState(()=>x[4]++);
                                }:x[4]==2?()
                                {_timer5.cancel();setState(()=>x[4]++);}:()=>setState(()=>x[4]++),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.green,
                                child: Text(
                                  x[4]==1?'Accept':x[4]==2?'Pack':'Dispatch',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'OpenSans',
                                  ),
                                ),

                              ),
                            ),
                            ),
                            x[4]==1?
                            ButtonTheme(
                              minWidth: 8,
                              height: 5,
                              child: RaisedButton(
                                elevation: 5.0,
                                onPressed: ()=>setState(()=>x[4]=0),
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.red,
                                child: Text(
                                  'Reject',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                            ): new Container(),
                          ],
                        ): new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[4]==1?'Not accepted yet!'
                                :x[4]==2&&_start[4]!=0?'Accepted':_start[4]==0&&x[4]==2?'Packing delayed':
                            x[4]==3?'Packed':'Completed',style:
                            TextStyle(color: _start[4]==0&&x[4]==2?Colors.red:x[4]==4?Colors.green:Colors.black ,
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        x[4]==2&&_start[4]>0?
                        Row(
                          children: <Widget>[
                            Text('Time to Pack:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircularPercentIndicator(
                                radius: 90.0,
                                lineWidth: 8.0,
                                animation: false,
                                percent: _start[4]/3600,
                                center: new Text(
                                  _printDuration(Duration(seconds: _start[4])),
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,color: Colors.green),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.green,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ):new Container(),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 180.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 8.0,
                          percent: x[4]==1?0.0:x[4]==2?0.35:x[4]==3?0.70:1.0,
                          linearStrokeCap: LinearStrokeCap.butt,
                          progressColor: Colors.green,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Bill Amount    \u20B9150"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Delivered by :  ABCD'),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Items'),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item1",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "250g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[4][0],
                                      onChanged: (bool value)=>setState(()=>value1[4][0]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item2",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "1kg",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 14,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[4][1],
                                      onChanged: (bool value)=>setState(()=>value1[4][1]=value),
                                    )
                                ),
                              ]
                          ),
                          Row(
                              children : <Widget>[
                                Image.asset(
                                  'images/food.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "Item3",
                                  ),
                                ),
                                Padding(
                                  padding:const EdgeInsets.only(left: 5,right: 5),
                                  child: Text(
                                    "500g",
                                  ),
                                ),
                                Padding(
                                    padding:const EdgeInsets.only(left: 5,right: 5),
                                    child: Checkbox(
                                      checkColor: Color(0xFFFFFFFF),
                                      activeColor: Color(0xff78b122),
                                      value: value1[4][2],
                                      onChanged: (bool value)=>setState(()=>value1[4][2]=value),
                                    )
                                ),
                              ]
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ):new Container(),
          ]
          )
          )
        )
    );
  }

}
