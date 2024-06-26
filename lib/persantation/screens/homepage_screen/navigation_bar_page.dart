


import 'package:best_ten_ui_expanse_app/persantation/screens/homepage_screen/profile.dart';
import 'package:best_ten_ui_expanse_app/persantation/screens/homepage_screen/statistic.dart';
import 'package:flutter/material.dart';

import 'add_page.dart';
import 'home_page.dart';
import 'notification.dart';



class NavigationBarPage extends StatefulWidget {


  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  var selectedindex =0 ;
  List<Widget> naviBar=[
    MyHomePage(),
    StaticPage(),
    AddPage(),
    NotificationPage(),
    ProfilePage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: naviBar[selectedindex],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon:Icon(Icons.home), label:'Home'),
          NavigationDestination(icon:Icon(Icons.bar_chart), label:'Statics'),
          NavigationDestination(icon:Icon(Icons.add_box_rounded), label:'Add'),
          NavigationDestination(icon:Icon(Icons.notifications_active), label:'Notification'),
          NavigationDestination(icon:Icon(Icons.account_circle), label:'profile'),

        ],
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        selectedIndex: selectedindex,
        onDestinationSelected:(value){

          setState(() {
            selectedindex=value;
          });



        },
      ),
    );
  }
}
