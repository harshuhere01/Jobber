import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/View/Screens/home_screen.dart';

import '../../Utils/dimensions.dart';
class DashBoardScreen extends StatefulWidget {
  int? _currentIndex=0;
  int? savePrevIndex;

  DashboardScreen(_currentIndex) {
    this._currentIndex = _currentIndex;

  }

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final List<Widget> _children = [
    HomeScreen(),
    // ExploreScreen(
    //   isFromProfile: false,
    // ),
    // MyCartScreen(),
    // ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 100,
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leading: Center(child: SvgPicture.asset("assets/images/maindrawericon.svg",height: D.H/15,width:D.W/8,)),
        centerTitle: true,
        title: Image.asset("assets/images/appbarlogo.png"),
        actions: [
          Center(child: Container(
            decoration: BoxDecoration(
                color: ColorConstants.primaryBlueColor,
              borderRadius: BorderRadius.all(
                  Radius.circular(12))),height: D.H/15,width: D.W/8,child: Image.asset("assets/images/notiicon.png"),))
        ],
      ),
      // body: _children[widget._currentIndex!],
      body: HomeScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),


          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor:ColorConstants.whiteColor,
              selectedItemColor:ColorConstants.primaryBlueColor,
              unselectedItemColor: Colors.black,
              selectedFontSize: D.H/50,
              unselectedFontSize: D.H/60,
              currentIndex: widget._currentIndex!,
              onTap: (value) {
                print(value);
                setState(() {
                  widget.savePrevIndex = widget._currentIndex;
                  widget._currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/home1image.png',
                    height: 25,
                    width: 25,
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/home1image.png',
                    height: 25,
                    width: 25,
                    color: ColorConstants.primaryBlueColor,
                  ),
                  // label: Languages.of(context)!.labelHome,
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/homeicon2.png',
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                    activeIcon:Image.asset(
                      'assets/images/homeicon2.png',
                      height: 25,
                      width: 25,
                      color: ColorConstants.primaryBlueColor,
                    ),
                    label: "Connect"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/homeicon3.png',
                      height:25,
                      width: 25,
                      color: Colors.black,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/homeicon3.png',
                      height:25,
                      width: 25,
                      color:ColorConstants.primaryBlueColor,
                    ),
                    // label: Languages.of(context)!.labelCart
                    label: "News"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/homeicon4.png',
                      height:25,
                      width: 25,
                      color: Colors.black,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/homeicon4.png',
                      height:25,
                      width: 25,
                      color:ColorConstants.primaryBlueColor,
                    ),
                    // label: Languages.of(context)!.labelCart
                    label: "Profile"),
              ]),
        ),
      ),
    );
  }
}
