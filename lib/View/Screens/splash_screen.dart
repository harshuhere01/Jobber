import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/View/Screens/dash_board_screen.dart';
import 'package:jobber/View/Screens/welcome_page_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';
import 'auth_screen.dart';
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    changeRoute();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    super.initState();
  }
  Future changeRoute() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getBool("isLogin")??false){
      await Future.delayed(Duration(milliseconds: 3000), () {
        NavigationHelpers.redirectFromSplash(context, DashBoardScreen());
      });
    }else{
      await Future.delayed(Duration(milliseconds: 3000), () {
        NavigationHelpers.redirectFromSplash(context, WelcomePageMain());
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    D.H=MediaQuery.of(context).size.height;
    D.W=MediaQuery.of(context).size.width;
    D.S=MediaQuery.of(context).size.height*MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.whiteColor,
        body: Center(child: Container(child: Image.asset("assets/images/splashimage.png"),)),
      ),
    );
  }
}