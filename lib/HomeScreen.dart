import 'package:flutter/material.dart';
import 'fonts/agri_icons.dart';
import 'Tabs/Hometab.dart';
import 'Tabs/SearchTab.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final _page = <Widget>[
    HomeTab(),
    SearchTab(),
    Text(
      'Index 3: User Profile',
      style: optionStyle,
    ),
  ];

  Position _currentPosition;
  final Geolocator geoLocator = Geolocator()..forceAndroidLocationManager;
  String _currentAddress = "Location not Available!";

  @override
  Widget build(BuildContext context) {
    _getCurrentLocation();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Center(
            child: AppBar(
              leading: null,
              title: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'images/location_icon.svg',
                      width: 22,
                      height: 22,
                      color: Colors.green,
                    ),
                    if (_currentPosition != null)
                      Text(
                        _currentAddress,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                  ],
                ),
              ),
              backgroundColor: Colors.white10,
              elevation: 0,
            ),
          ),
        ),
        body: Center(
          child: _page[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Theme.of(context).accentColor,
          selectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('HOME'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Agri.shopping_list,
                color: Colors.white,
              ),
              title: Text('ORDERS'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text('PROFILE'),
            ),
          ],
        )
//      Container(
//        decoration: BoxDecoration(color: Theme.of(context).accentColor, boxShadow: [
//          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
//        ]),
//        child: SafeArea(
//          child: Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//            child: GNav(
//                gap: 8,
//                activeColor: Colors.white,
//                iconSize: 24,
//                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                duration: Duration(milliseconds: 800),
//                tabBackgroundColor: Theme.of(context).primaryColor,
//                tabs: [
//                  GButton(
//                    iconColor: Theme.of(context).primaryColor,
//                    icon: Icons.home,
//                    text: 'Home',
//                  ),
//                  GButton(
//                    iconColor: Theme.of(context).primaryColor,
//                    icon: Agri.search,
//                    text: 'Search',
//                  ),
//                  GButton(
//                    iconColor: Theme.of(context).primaryColor,
//                    icon: Agri.shopping_cart,
//                    text: 'Cart',
//                  ),
//                  GButton(
//                    iconColor: Theme.of(context).primaryColor,
//                    icon: Agri.user,
//                    text: 'Profile',
//                  ),
//                ],
//                selectedIndex: _selectedIndex,
//                onTabChange: (index) {
//                  setState(() {
//                    _selectedIndex = index;
//                  });
//                }),
//          ),
//        ),
//      ),
        );
  }

  _getCurrentLocation() {
    geoLocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geoLocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
            " ${place.subLocality}, ${place.locality}, ${place.administrativeArea}";
      });
    } catch (e) {
      print(e);
    }
  }
}
