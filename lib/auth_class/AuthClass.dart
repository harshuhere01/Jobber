import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:jobber/Constants/api_endpoint.dart';
import 'package:jobber/Model/API%20Models/social_login_model.dart';
import 'package:jobber/Utils/preferences.dart';
import 'package:jobber/View/Screens/auth_screen.dart';
import 'package:jobber/View/Screens/visiting_card_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Utils/common_utils.dart';
import '../Utils/navigation_helper.dart';
import '../View/Screens/dash_board_screen.dart';

class AuthClass {
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
          await socialsignUp(context, userCredential.user!.email ?? '',
              userCredential.user!.displayName ?? '', "test", "2");

          await Future.delayed(Duration(milliseconds: 500), () {
            NavigationHelpers.redirectFromSplash(context, DashBoardScreen(0));
            // CommonUtils.hideDialog(context);
          });
        } catch (e) {
          print(e);
          CommonUtils.hideDialog(context);
          CommonUtils.showRedToastMessage(e.toString());
        }
      } else {
        print("google acc is null");
        CommonUtils.hideDialog(context);
      }
    } catch (e) {
      CommonUtils.hideDialog(context);
      print(e);
    }
  }

  Future<void> facebookLogin(BuildContext context) async {
    CommonUtils.showProgressDialog(context);
    try {
      final LoginResult result =
          await FacebookAuth.instance.login(permissions: [
        'public_profile',
        'email',
      ], loginBehavior: LoginBehavior.webOnly);

      if (result.status == LoginStatus.success) {
        // you are logged
        final AccessToken accessToken = result.accessToken!;

        final AuthCredential credential =
            FacebookAuthProvider.credential(accessToken.token);
        try {
          UserCredential credd =
              await FirebaseAuth.instance.signInWithCredential(credential);
          await socialsignUp(context, credd.user!.email ?? '',
              credd.user!.displayName ?? '', "lname", "2");
        } catch (e) {
          CommonUtils.hideDialog(context);
        }
      }
      if (result.status == LoginStatus.failed) {
        CommonUtils.hideDialog(context);
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("${result.status}")),
        );
      }
      else if(result.message!.isNotEmpty){
        CommonUtils.hideDialog(context);
      }
    } catch (e) {
      print('facebook error :-$e');
      CommonUtils.hideDialog(context);
    }
    // by default we request the email and the public profile
    // or FacebookAuth.i.login()
  }

  Future<void> signOut(context) async {
    try {
      await _googleSignIn.signOut();
      await FacebookAuth.instance.logOut();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.clear();
      NavigationHelpers.redirectFromSplash(context, AuthScreen());
    } catch (e) {
      print('$e + Error while signing out');
    }
  }

  Future<void> socialsignUp(
    context,
    String email,
    String fname,
    String lname,
    String type,
  ) async {
    final uri = ApiEndPoint.socialmediasignup;
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = {
      "email": email,
      "first_name": fname,
      "last_name": lname,
      "type": type,
    };
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );
    int statusCode = response.statusCode;
    String responseBody = response.body;
    var res = jsonDecode(responseBody);
    if (statusCode == 200 && res["success"]) {
      SocialSignUpModel responsee = SocialSignUpModel.fromJson(res);
      PreferenceUtils.putObject("SocialLoginResponse", responsee);
      SocialSignUpModel? rr =
          await PreferenceUtils.getSocialLoginObject("SocialLoginResponse");

      CommonUtils.hideProgressDialog(context);
      CommonUtils.showGreenToastMessage("Login Successfully");
      NavigationHelpers.redirectto(context, VisitingCardMain());
    } else {
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showRedToastMessage("Something went wrong");
    }
  }
}
