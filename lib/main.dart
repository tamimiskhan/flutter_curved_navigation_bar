import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'a.dart';
import 'b.dart';
import 'c.dart';
import 'd.dart';
import 'e.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _page=0;
  var pages = [A(), B(), C(), D(), E()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index){
         setState(() {
           _page=index;
         });
        },

        items: [
          Icon(Icons.ac_unit),
          Icon(Icons.access_alarms),
          Icon(Icons.photo_library),
          Icon(Icons.account_balance),
          Icon(Icons.storage),
        ],

      ),
      body: pages[_page],
    );
  }
}
