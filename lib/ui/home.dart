import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:zomatoui/constant/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      ),
    );
  }
}
