import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/create_visiting_card_main_screen.dart';
import 'package:jobber/View/Screens/explore_screen.dart';
import 'package:jobber/View/Screens/home_screen.dart';
import 'package:jobber/View/Screens/news_screen.dart';
import 'package:jobber/View/Screens/search_screen.dart';
import 'package:jobber/auth_class/AuthClass.dart';

import '../../Utils/dimensions.dart';
import '../../Utils/drawer_listile.dart';
import 'about_us_screen.dart';
import 'account_screen.dart';
import 'contact_us_screen.dart';
import 'feedback_screen.dart';
import 'job_screen.dart';
import 'notification_screen.dart';

class DashBoardScreen extends StatefulWidget {
  int? _currentIndex = 0;
  int? savePrevIndex;

  DashBoardScreen(_currentIndex) {
    this._currentIndex = _currentIndex;
  }

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final List<Widget> _children = [
    HomeScreen(),
    JobScreen(),
    ExploreScreen(),
    NewsScreen(),
    AccountScreen(),
    // ExploreScreen(
    //   isFromProfile: false,
    // ),
    // MyCartScreen(),
    // ProfileScreen()
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leading: InkWell(
            onTap: () => _scaffoldKey.currentState!.openDrawer(),
            child: Center(
                child: SvgPicture.asset(
              "assets/images/maindrawericon.svg",
              height: D.H / 15,
              width: D.W / 8,
            ))),
        centerTitle: true,
        title: Image.asset("assets/images/appbarlogo.png"),
        actions: [
          InkWell(
            onTap: () {
              NavigationHelpers.redirect(context, NotificationScreen());
            },
            child: Center(
                child: Container(
              decoration: BoxDecoration(
                  color: ColorConstants.primaryBlueColor,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              height: D.H / 15,
              width: D.W / 8,
              child: Transform.rotate(
                  angle: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      "assets/images/bell.svg",
                      color: ColorConstants.whiteColor,
                    ),
                  )),
            )),
          ),
          Container(
            width: 5,
          )
        ],
      ),
      // body: _children[widget._currentIndex!],
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: D.W / 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: D.H / 20,
                ),
                Container(
                  height: D.H / 10,
                  width: D.W / 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1921&q=80",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Adom Shafi",
                  style: GoogleFonts.roboto(
                      fontSize: 26, fontWeight: FontWeight.w500),
                ),
                Text(
                  "hellobesnik@gmail.com",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5)),
                ),
                SizedBox(
                  height: D.H / 40,
                ),
                DrawerListTile("assets/images/usericondrawer.svg","Edit profile",Colors.red,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context, DashBoardScreen(4));
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/drawerwatchicon.svg","My Account",Colors.deepOrangeAccent,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context, DashBoardScreen(4));
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/appliedjob.svg","Applied Job",Colors.green,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context, DashBoardScreen(1));
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/resume.svg","Resume Builder",Colors.pink,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context,CreateVisitingCardMainPage());
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/cv.svg","Digital CV",ColorConstants.primaryBlueColor,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context,CreateVisitingCardMainPage());
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/news.svg","News",Colors.black,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context,DashBoardScreen(3));
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/aboutus.svg","About Us",Colors.blueGrey,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context,AboutUsScreen());
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/contactus.svg","Contact Us",Colors.green,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context,ContactUsScreen());
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/feedback.svg","Feedback",Colors.pinkAccent,(){
                  Navigator.pop(context);
                  NavigationHelpers.redirect(context,FeedBackScreen());
                }),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/privacy.svg","Privacy Policy",Colors.black,(){}),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/terms.svg","Terms & Condition",Colors.grey,(){}),
                SizedBox(height: D.H/60,),
                DrawerListTile("assets/images/logout.svg","LogOut",Colors.red,(){
                  Navigator.pop(context);
                  AuthClass().signOut(context);
                }),
              ],
            ),
          ),
        ),
        /*child: Center(child: ListTile(leading: Text("                        LogOut"),onTap: (){
          Navigator.pop(context);
          AuthClass().signOut(context);},)),*/
      ),
      body: _children[widget._currentIndex!],
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
              backgroundColor: ColorConstants.whiteColor,
              selectedItemColor: ColorConstants.primaryBlueColor,
              unselectedItemColor: Colors.black,
              selectedFontSize: D.H / 50,
              unselectedFontSize: D.H / 60,
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
                    'assets/images/homeicon.png',
                    height: 25,
                    width: 25,
                    color: Colors.black,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/homeicon.png',
                    height: 25,
                    width: 25,
                    color: ColorConstants.primaryBlueColor,
                  ),
                  // label: Languages.of(context)!.labelHome,
                  label: "Home",
                ),
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
                  label: "Job",
                ),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/homeicon2.png',
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/homeicon2.png',
                      height: 25,
                      width: 25,
                      color: ColorConstants.primaryBlueColor,
                    ),
                    label: "Explore"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/homeicon3.png',
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/homeicon3.png',
                      height: 25,
                      width: 25,
                      color: ColorConstants.primaryBlueColor,
                    ),
                    // label: Languages.of(context)!.labelCart
                    label: "News"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/homeicon4.png',
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                    activeIcon: Image.asset(
                      'assets/images/homeicon4.png',
                      height: 25,
                      width: 25,
                      color: ColorConstants.primaryBlueColor,
                    ),
                    // label: Languages.of(context)!.labelCart
                    label: "Profile"),
              ]),
        ),
      ),
    );
  }
}
