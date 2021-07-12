import 'package:flutter/material.dart';
import 'Pages/Faq.dart';
import 'Pages/ManageProfile.dart';
import 'Pages/booking.dart';
import 'car_subs.dart';
import 'secondScreen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=> _MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage> {
  List containers=[
    second(),
    ManageProfile(),
    subs(),
    Faq(),
  ];

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: containers[_currentIndex],
      
      bottomNavigationBar: BottomNavyBar(
        showElevation: false,
        animationDuration: Duration(milliseconds: 400),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
            icon: Icon(Icons.home),
            activeColor: Colors.blue,
            inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
            title: Text('Profile',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
            icon: Icon(Icons.person_rounded),
            activeColor: Colors.orange,
            inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
            title: Text('Subscription',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
            icon: Icon(Icons.calendar_view_day_rounded),
            activeColor: Colors.green,
            inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
            title: Text('Help',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
            icon: Icon(Icons.help),
            activeColor: Colors.purple,
            inactiveColor: Colors.black
          ),
        ],
      ),
    );
  }
}