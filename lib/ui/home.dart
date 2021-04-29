import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:zomatoui/constant/colors.dart';
import 'package:zomatoui/constant/textstyles.dart';
import 'package:zomatoui/ui/pertama.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.shopping_bag,
            ),
            label: 'Shopping Bag',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              label: 'Gold'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.primaryTextColorGrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
          child: _selectedIndex == 2 || _selectedIndex == 4
              ? Container(
                  child: _widgetOptions.elementAt(_selectedIndex),
                )
              : Container(
                  color: AppColors.whiteColor,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: 15.0,
                                right: 10.0,
                              ),
                              child: Icon(
                                SimpleLineIcons.location_pin,
                                size: 35.0,
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 5,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Home',
                                      textAlign: TextAlign.left,
                                      style: TextStyles.actionTitle,
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                )),
    );
  }
}
