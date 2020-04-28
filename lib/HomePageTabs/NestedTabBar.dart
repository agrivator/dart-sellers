import 'package:flutter/material.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;
  List<String> _options = [
    'Available',
    'Not Available',
  ];
  String _selectedOption1;
  String _selectedOption2;
  String _selectedOption3;
  String _selectedOption4;

  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black45,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: "Fruits & Vegetables",
            ),
            Tab(
              text: "Medicines",
            ),
            Tab(
              text: "Health Benefits",
            ),
          ],
        ),
        Container(
          height: size.height * 0.70,
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                                  5.0, // has the effect of softening the shadow
                              spreadRadius:
                                  0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(size.height * 0.02634),
                                  topLeft:
                                      Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/food.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption1,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption1 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/food.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption2,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption2 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/food.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption3,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption3 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/food.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption4,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption4 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/medicines.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption1,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption1 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/medicines.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption2,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption2 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/medicines.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption1,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption1 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/medicines.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption2,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption2 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/health.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption1,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption1 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/health.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption1,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption1 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/health.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption1,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption1 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.025,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: .3,
                            color: Colors.black38,
                          ),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius:
                              5.0, // has the effect of softening the shadow
                              spreadRadius:
                              0.0, // has the effect of extending the shadow
                              offset: Offset(
                                5, // horizontal, move right 10
                                5.0, // vertical, move down 10
                              ),
                            ),
                          ]),
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.035),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                  Radius.circular(size.height * 0.02634),
                                  topLeft:
                                  Radius.circular(size.height * 0.02634)),
                              child: Image.asset(
                                'images/health.jpg',
                                height: size.height * 0.11,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Item 1\n\n\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "₹40\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            DropdownButton(
                              hint: Text('Stock'),
                              value: _selectedOption1,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOption1 = newValue;
                                });
                              },
                              items: _options.map((option) {
                                return DropdownMenuItem(
                                  child: new Text(option),
                                  value: option,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
