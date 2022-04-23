import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Model/API%20Models/login_model.dart';
import 'package:jobber/Utils/preferences.dart';
import 'package:jobber/View/Screens/dash_board_screen.dart';
import 'package:jobber/View/Screens/welcome_page_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';
import 'auth_screen.dart';
import 'package:video_player/video_player.dart';
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  VideoPlayerController? _controller;
  bool _visible = false;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _controller = VideoPlayerController.asset("assets/splash.mp4");
    _controller?.initialize().then((_) {
      _controller?.setLooping(false);
      _controller?.setVolume(0.0);
      Timer(Duration(milliseconds: 100), () {
        setState(() {
          _controller?.play();
          _visible = true;
        });
      });
    });
    changeRoute();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    super.initState();
  }
  _getVideoBackground() {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 1000),
      child: VideoPlayer(_controller!),
    );
  }

  _getBackgroundColor() {
    return Container(color: Colors.transparent //.withAlpha(120),
    );
  }

  _getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
  Future changeRoute() async {
    LoginModel? loginModel=await PreferenceUtils.getLoginObject("LoginResponse");
    if(loginModel!=null && loginModel.token!.isNotEmpty){
      await Future.delayed(Duration(milliseconds: 6500), () {
        NavigationHelpers.redirectFromSplash(context, DashBoardScreen(0));
      });
    }else{
      await Future.delayed(Duration(milliseconds: 6500), () {
        NavigationHelpers.redirectFromSplash(context, WelcomePageMain());
      });
    }

    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // if(prefs.getBool("isLogin")??false){
    //   await Future.delayed(Duration(milliseconds: 6500), () {
    //     NavigationHelpers.redirectFromSplash(context, DashBoardScreen(0));
    //   });
    // }else{
    //   await Future.delayed(Duration(milliseconds: 6500), () {
    //     NavigationHelpers.redirectFromSplash(context, WelcomePageMain());
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    D.H=MediaQuery.of(context).size.height;
    D.W=MediaQuery.of(context).size.width;
    D.S=MediaQuery.of(context).size.height*MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffa9abc5),
        body: Center(
          child: Container(
              height: 250,
              child: Center(child: Stack(children: <Widget>[_getVideoBackground(),]))),
        ),
      ),
    );
  }
}