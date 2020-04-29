import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OrderTab extends StatefulWidget {
  @override
  _OrderTabState createState()=> _OrderTabState();
}
class _OrderTabState extends State<OrderTab>{
  var value1=[[false,false,false,false],[false,false,false,false],[false,false,false,false],[false,false,false,false],[false,false,false,false]];
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
          child: Column(
          children : <Widget>[
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
                              Row(
                                children: <Widget>[
                                  Text('Packed'),
                                  Checkbox(
                                    value: value1[0][0],
                                    onChanged: (bool value)=>setState(()
                                    {
                                      value1[0][0]=value;
                                      if(value==true){
                                        value1[0][1]=true;
                                        value1[0][2]=true;
                                        value1[0][3]=true;
                                      }
                                    }),
                                    checkColor: Color(0xFFFFFFFF),
                                    activeColor: Color(0xff78b122),
                                  )
                                ],
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
                                        value: value1[0][1],
                                        onChanged: (bool value)=>setState(()
                                        {
                                          value1[0][1]=value;
                                          if(value1[0][1]==true && value1[0][2]==true && value1[0][3]==true)
                                            {
                                              value1[0][0]=true;
                                            }
                                          else value1[0][0]=false;
                                        }
                                        ),
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
                                            value: value1[0][2],
                                            onChanged: (bool value)=>setState(()
                                            {
                                              value1[0][2]=value;
                                              if(value1[0][1]==true && value1[0][2]==true && value1[0][3]==true)
                                              {
                                                value1[0][0]=true;
                                              }
                                              else value1[0][0]=false;
                                            }
                                            ),
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
                                            value: value1[0][3],
                                            onChanged: (bool value)=>setState(()
                                            {
                                              value1[0][3]=value;
                                              if(value1[0][1]==true && value1[0][2]==true && value1[0][3]==true)
                                              {
                                                value1[0][0]=true;
                                              }
                                              else value1[0][0]=false;
                                            }
                                            ),
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
                  ),
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
                        Text('Chrisbin Sunny'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Packed'),
                            Checkbox(
                              checkColor: Color(0xFFFFFFFF),
                              activeColor: Color(0xff78b122),
                              value: value1[1][0],
                              onChanged: (bool value)=>setState(()
                              {
                                value1[1][0]=value;
                                if(value==true){
                                  value1[1][1]=true;
                                  value1[1][2]=true;
                                  value1[1][3]=true;
                                }
                              }),
                            )
                          ],
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
                                      value: value1[1][1],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[1][1]=value;
                                        if(value1[1][1]==true && value1[1][2]==true && value1[1][3]==true)
                                        {
                                          value1[1][0]=true;
                                        }
                                        else value1[1][0]=false;
                                      }
                                      ),
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
                                      value: value1[1][2],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[1][2]=value;
                                        if(value1[1][1]==true && value1[1][2]==true && value1[1][3]==true)
                                        {
                                          value1[1][0]=true;
                                        }
                                        else value1[1][0]=false;
                                      }
                                      ),
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
                                      value: value1[1][3],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[1][3]=value;
                                        if(value1[1][1]==true && value1[1][2]==true && value1[1][3]==true)
                                        {
                                          value1[1][0]=true;
                                        }
                                        else value1[1][0]=false;
                                      }
                                      ),
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
            ),
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
                        Text("27 April 2020 05:20 pm"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Smaran Ponnappa'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Packed'),
                            Checkbox(
                              checkColor: Color(0xFFFFFFFF),
                              activeColor: Color(0xff78b122),
                              value: value1[2][0],
                              onChanged: (bool value)=>setState(()
                              {
                                value1[2][0]=value;
                                if(value==true){
                                  value1[2][1]=true;
                                  value1[2][2]=true;
                                  value1[2][3]=true;
                                }
                              }),
                            )
                          ],
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
                                      value: value1[2][1],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[2][1]=value;
                                        if(value1[2][1]==true && value1[2][2]==true && value1[2][3]==true)
                                        {
                                          value1[2][0]=true;
                                        }
                                        else value1[2][0]=false;
                                      }
                                      ),
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
                                      value: value1[2][2],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[2][2]=value;
                                        if(value1[2][1]==true && value1[2][2]==true && value1[2][3]==true)
                                        {
                                          value1[2][0]=true;
                                        }
                                        else value1[2][0]=false;
                                      }
                                      ),
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
                                      value: value1[2][3],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[2][3]=value;
                                        if(value1[2][1]==true && value1[2][2]==true && value1[2][3]==true)
                                        {
                                          value1[2][0]=true;
                                        }
                                        else value1[2][0]=false;
                                      }
                                      ),
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
            ),
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
                        Text("27 April 2020 8:20 pm"),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sarath S'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Packed'),
                            Checkbox(
                              checkColor: Color(0xFFFFFFFF),
                              activeColor: Color(0xff78b122),
                              value: value1[3][0],
                              onChanged: (bool value)=>setState(()
                              {
                                value1[3][0]=value;
                                if(value==true){
                                  value1[3][1]=true;
                                  value1[3][2]=true;
                                  value1[3][3]=true;
                                }
                              }),
                            )
                          ],
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
                                      value: value1[3][1],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[3][1]=value;
                                        if(value1[3][1]==true && value1[3][2]==true && value1[3][3]==true)
                                        {
                                          value1[3][0]=true;
                                        }
                                        else value1[3][0]=false;
                                      }
                                      ),
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
                                      value: value1[3][2],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[3][2]=value;
                                        if(value1[3][1]==true && value1[3][2]==true && value1[3][3]==true)
                                        {
                                          value1[3][0]=true;
                                        }
                                        else value1[3][0]=false;
                                      }
                                      ),
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
                                      value: value1[3][3],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[3][3]=value;
                                        if(value1[3][1]==true && value1[3][2]==true && value1[3][3]==true)
                                        {
                                          value1[3][0]=true;
                                        }
                                        else value1[3][0]=false;
                                      }
                                      ),
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
            ),
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
                        Text('Vshnav P'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Packed'),
                            Checkbox(
                              checkColor: Color(0xFFFFFFFF),
                              activeColor: Color(0xff78b122),
                              value: value1[4][0],
                              onChanged: (bool value)=>setState(()
                              {
                                value1[4][0]=value;
                                if(value==true){
                                  value1[4][1]=true;
                                  value1[4][2]=true;
                                  value1[4][3]=true;
                                }
                              }),
                            )
                          ],
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
                                      value: value1[4][1],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[4][1]=value;
                                        if(value1[4][1]==true && value1[4][2]==true && value1[4][3]==true)
                                        {
                                          value1[4][0]=true;
                                        }
                                        else value1[4][0]=false;
                                      }
                                      ),
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
                                      value: value1[4][2],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[4][2]=value;
                                        if(value1[4][1]==true && value1[4][2]==true && value1[4][3]==true)
                                        {
                                          value1[4][0]=true;
                                        }
                                        else value1[4][0]=false;
                                      }
                                      ),
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
                                      value: value1[4][3],
                                      onChanged: (bool value)=>setState(()
                                      {
                                        value1[4][3]=value;
                                        if(value1[4][1]==true && value1[4][2]==true && value1[4][3]==true)
                                        {
                                          value1[4][0]=true;
                                        }
                                        else value1[4][0]=false;
                                      }
                                      ),
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
            ),
          ]
          )
          )
        )
    );
  }
}
