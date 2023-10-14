import 'package:app/pages/calendar.dart';
import 'package:app/pages/catgory.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/messages.dart';
import 'package:app/pages/settings.dart';
import 'package:app/pages/sudale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ================================================================
class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  var _selectedIndex = 4;
  final _screens = [
     Settings(),
//پیام
   Sudale(),
//su
    Messages(),
//seting

//cotgory
Catgory(),
   
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [

              BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "تنظیمات",
            ),

// =================================بات=================================
 
            //=============================================
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "لیست نوبت",
            ),
//==========================پیام===========================
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label:"پیام",
            ),

            //===========================================
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "دسته بندی",
            ),
//=====================================
//===========================================
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "خانه",
            ),
//=====================================
          
          ],
        ),
      ),
    );
  }
}
