import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
class OrderTab extends StatefulWidget {
  @override
  _OrderTabState createState()=> _OrderTabState();
}
class _OrderTabState extends State<OrderTab>{
  var x=[1,1,1,1,1];
  var value1=[[true,true,true],[true,true,true],[true,true,true],[true,true,true],[true,true,true]];
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
                                  ButtonTheme(
                                    minWidth: 10,
                                  height: 5,
                                  child: RaisedButton(
                                    elevation: 5.0,
                                    onPressed: ()=>setState(()=>x[0]++),
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
                                  x[0]==1?
                                      ButtonTheme(
                                        minWidth: 10,
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
                              Row(
                                children: <Widget>[
                                  Text('Status: '),
                                  Text(x[0]==1?'Not accepted yet!':x[0]==2?'Accepted':x[0]==3?'Packed':'Completed'),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              LinearPercentIndicator(
                                width: 100.0,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 20.0,
                                percent: x[0]==1?0.0:x[0]==2?0.35:x[0]==3?0.70:1.0,
                                center: Text(x[0]==1?'0%':x[0]==2?'35%':x[0]==3?'70%':'100%',),
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
                            ButtonTheme(
                              minWidth: 10,
                            height: 5,
                            child: RaisedButton(
                              elevation: 5.0,
                              onPressed: ()=>setState(()=>x[1]++),
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: Colors.green,
                              child: Text(
                                x[1]==1?'Accept':x[1]==2?'Pack':'Dispatch',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),
                            ),
                            x[1]==1?
                                ButtonTheme(
                                  minWidth: 10,
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
                            )
                                ): new Container(),
                          ],
                        ): new Container(),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[1]==1?'Not accepted yet!':x[1]==2?'Accepted':x[1]==3?'Packed':'Completed'),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 100.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 20.0,
                          percent: x[1]==1?0.0:x[1]==2?0.35:x[1]==3?0.70:1.0,
                          center: Text(x[1]==1?'0%':x[1]==2?'35%':x[1]==3?'70%':'100%',),
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
                            ButtonTheme(
                              minWidth: 10,
                            height: 5,
                            child: RaisedButton(
                              elevation: 5.0,
                              onPressed: ()=>setState(()=>x[2]++),
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: Colors.green,
                              child: Text(
                                x[2]==1?'Accept':x[2]==2?'Pack':'Dispatch',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),
                            ),
                            x[2]==1?
                                ButtonTheme(
                                  minWidth: 10,
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
                            )
                                ): new Container(),
                          ],
                        ): new Container(),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[2]==1?'Not accepted yet!':x[2]==2?'Accepted':x[2]==3?'Packed':'Completed'),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 100.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 20.0,
                          percent: x[2]==1?0.0:x[2]==2?0.35:x[2]==3?0.70:1.0,
                          center: Text(x[2]==1?'0%':x[2]==2?'35%':x[2]==3?'70%':'100%',),
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
                        Text("27 April 2020 07:30 pm"),
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
                            ButtonTheme(
                              minWidth: 10,
                            height: 5,
                            child: RaisedButton(
                              elevation: 5.0,
                              onPressed: ()=>setState(()=>x[3]++),
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: Colors.green,
                              child: Text(
                                x[0]==1?'Accept':x[0]==2?'Pack':'Dispatch',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),
                            ),
                            x[3]==1?
                                ButtonTheme(
                                  minWidth: 10,
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
                            )
                                ): new Container(),
                          ],
                        ): new Container(),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[3]==1?'Not accepted yet!':x[3]==2?'Accepted':x[3]==3?'Packed':'Completed'),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 100.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 20.0,
                          percent: x[3]==1?0.0:x[3]==2?0.35:x[3]==3?0.70:1.0,
                          center: Text(x[3]==1?'0%':x[3]==2?'35%':x[3]==3?'70%':'100%',),
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
                        x[4]!=4?
                        Row(
                          children: <Widget>[
                            Text('Order:'),
                            ButtonTheme(
                              minWidth: 10,
                            height: 5,
                            child: RaisedButton(
                              elevation: 5.0,
                              onPressed: ()=>setState(()=>x[4]++),
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: Colors.green,
                              child: Text(
                                x[4]==1?'Accept':x[4]==2?'Pack':'Dispatch',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),
                            ),
                            x[4]==1?
                                ButtonTheme(
                                  minWidth: 10,
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
                            )
                                ): new Container(),
                          ],
                        ): new Container(),
                        Row(
                          children: <Widget>[
                            Text('Status: '),
                            Text(x[4]==1?'Not accepted yet!':x[4]==2?'Accepted':x[4]==3?'Packed':'Completed'),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          width: 100.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 20.0,
                          percent: x[4]==1?0.0:x[4]==2?0.35:x[4]==3?0.70:1.0,
                          center: Text(x[4]==1?'0%':x[4]==2?'35%':x[4]==3?'70%':'100%',),
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
