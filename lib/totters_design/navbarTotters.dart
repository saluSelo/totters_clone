import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:totters_app/Screens/butlerPage.dart';
import 'package:totters_app/Screens/profileTotters.dart';
import 'package:totters_app/Screens/search.dart';
import 'package:totters_app/Screens/tabsPage.dart';
import 'package:totters_app/Screens/tottersHome.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    tottersHomePage(),
    searchPage(),
    butlerPage(),
    tabsPage(),
    profilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 20,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.green,
              tabs: [
                GButton(
                  iconColor: Colors.green,
                  icon: LineIcons.home,
                  text: 'home',
                  textColor: Colors.green,
                ),
                GButton(
                  iconColor: Colors.green,
                  icon: LineIcons.search,
                  text: 'search',
                  textColor: Colors.green,
                ),
                GButton(
                  iconColor: Colors.green,
                  icon: LineIcons.userTie,
                  text: 'Butler',
                  textColor: Colors.green,
                ),
                GButton(
                  iconColor: Colors.green,
                  icon: LineIcons.list,
                  text: 'Orders',
                  textColor: Colors.green,
                ),
                GButton(
                  iconColor: Colors.green,
                  icon: LineIcons.userCheck,
                  text: 'Account',
                  textColor: Colors.green,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
