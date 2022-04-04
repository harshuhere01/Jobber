import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/View/Screens/welcome_page_main.dart';

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
    await Future.delayed(Duration(milliseconds: 3000), () {
       NavigationHelpers.redirect(context, WelcomePageMain());
    });

    /*if (PreferenceUtils.isIntroDone("isIntroDone") &&
        SharedPreferenceUtil.getBool(Constants.isLoggedIn)) {
      await Future.delayed(Duration(milliseconds: 3000), () {
        Navigator.pushReplacement(
          this.context,
          MaterialPageRoute(
            builder: (BuildContext context) => DashboardScreen(0),
            // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
            //     ? DashboardScreen(0)
            //     : Register(),
            // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
            //     ? DashboardScreen(0)
            //     :LoginScreen(),
          ),
        );
      });
    } else if (PreferenceUtils.isIntroDone("isIntroDone")) {
      await Future.delayed(Duration(milliseconds: 3000), () {
        Navigator.pushReplacement(
          this.context,
          MaterialPageRoute(
            builder: (BuildContext context) => Register(),
            // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
            //     ? DashboardScreen(0)
            //     : Register(),
            // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
            //     ? DashboardScreen(0)
            //     :LoginScreen(),
          ),
        );
      });
    } else {
      await Future.delayed(Duration(milliseconds: 3000), () {
        Navigator.pushReplacement(
          this.context,
          MaterialPageRoute(
            builder: (BuildContext context) => IntroScreen1(),
            // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
            //     ? DashboardScreen(0)
            //     : Register(),
            // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
            //     ? DashboardScreen(0)
            //     :LoginScreen(),
          ),
        );
      });
    }*/
    // await Future.delayed(Duration(milliseconds: 3000), () {
    //   Navigator.pushReplacement(
    //     this.context,
    //     MaterialPageRoute(
    //       builder: (BuildContext context) => Register(),
    //       // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
    //       //     ? DashboardScreen(0)
    //       //     : Register(),
    //       // SharedPreferenceUtil.getBool(Constants.isLoggedIn,defValue: false)
    //       //     ? DashboardScreen(0)
    //       //     :LoginScreen(),
    //     ),
    //   );
    // });
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