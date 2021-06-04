import 'package:chat_app/homepage.dart';
import 'package:chat_app/page1.dart';
import 'package:chat_app/settings.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class FrontScreen extends StatefulWidget {
  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {

  int currentIndex = 0;
  PageController _pageController;

  @override
  void initState() { 
    super.initState();
    _pageController = PageController(); 
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() => currentIndex = index);
          },
          children: <Widget> [
            HomePage(),
            Page1(),
            Settings(),
          ],
        ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 30,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
          _pageController.jumpToPage(index);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_cart,),
            title: Text('Shop'),
            activeColor: Colors.cyan,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            title: Text( 'Messages'),
            activeColor: Colors.cyan,
            textAlign: TextAlign.center,
          ),
            BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
            activeColor: Colors.cyan,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.cyan,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
    
