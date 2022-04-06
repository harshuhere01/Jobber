import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jobber/View/Screens/auth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Utils/common_utils.dart';
import '../Utils/navigation_helper.dart';
import '../View/Screens/dash_board_screen.dart';

class AuthClass{
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> googleSignin(BuildContext context) async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        try {
          UserCredential userCredential =
          await auth.signInWithCredential(credential);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('isLogin', true);
          CommonUtils.showGreenToastMessage("Login Successfully");
          await Future.delayed(Duration(milliseconds: 500), () {
            NavigationHelpers.redirectFromSplash(
                context, DashBoardScreen());
            // CommonUtils.hideDialog(context);
          });
        } catch (e) {
          print(e);
          CommonUtils.showRedToastMessage(
              e.toString());
        }
      } else {
        print("google acc is null");
        CommonUtils.hideDialog(context);
      }
    } catch (e) {
      print(e);

    }
  }

  Future<void> signOut(context) async {

    try {
      await _googleSignIn.signOut();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.clear();
      NavigationHelpers.redirectFromSplash(context, AuthScreen());

    } catch (e) {
      print('$e + Error while signing out');
    }
  }
}