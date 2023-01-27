import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taqreri_e_commerce/order_status.dart';

import '../alerts.dart';
import '../more.dart';
import '../offers.dart';
import 'home_new.dart';
import 'home_screen.dart';

class Bottom_Navigation extends StatefulWidget {
  Bottom_Navigation({Key? key}) : super(key: key);

  @override
  _Bottom_NavigationState createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home_New_Screen(),
    Offers_Screen(),
    OrderStatus(),
    Alert_Screen(),
    More_Screen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ),
          ),
          Container(
              height: h * 0.07,
              padding: EdgeInsets.only(left: w * 0.07),
              decoration: BoxDecoration(
                  color: Color(0xff03645D),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Row(
                children: [
                  Text(
                    "Total :",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      " 0.00 - Continue",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: h * 0.07,
                    width: w * 0.15,
                    decoration: BoxDecoration(
                        color: Color(0xff014540),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20))),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  )
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/Home_Icon.png"),
                size: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/Deals.png"),
                size: 25,
              ),
              label: 'Deals',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/Orders.png"),
                size: 25,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/Alerts.png"),
                size: 25,
              ),
              label: 'Alerts',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/More.png"),
                size: 25,
              ),
              label: 'More',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          unselectedItemColor: Color(0xff868686),
          selectedItemColor: Color(0xffF86B6B),
          iconSize: 50,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
