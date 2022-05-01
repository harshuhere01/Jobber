import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_button.dart';
import 'package:jobber/CustomWidgets/custom_textform_field.dart';
import 'package:jobber/Model/API%20Models/login_model.dart';
import 'package:jobber/Model/API%20Models/social_login_model.dart';
import 'package:jobber/Utils/preferences.dart';
import 'package:jobber/View/Screens/choose_your_use_screen.dart';
import 'package:jobber/View/Screens/resetPassword_screen.dart';
import 'package:jobber/View/Screens/visiting_card_main.dart';
import 'package:jobber/auth_class/AuthClass.dart';

import '../../Constants/api_endpoint.dart';
import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';
import 'dash_board_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              CupertinoIcons.left_chevron,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Welcome Back",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500, fontSize: D.H / 25),
                ),
              ],
            ),
            SizedBox(
              height: D.H / 90,
            ),
            Row(
              children: [
                Text(
                  "Nice To See You Again!",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: D.H / 50,
                      color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
            SizedBox(
              height: D.H / 50,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  CustomTextFormField(
                      controller: emailController,
                      readOnly: false,
                      hint: "Email Address",
                      iconPath: Icons.email_outlined,
                      validators: (e) {
                        if (emailController.text == null ||
                            emailController.text == '') {
                          return '*Please enter Email';
                        } else if (!EmailValidator.validate(
                            emailController.text)) {
                          return '*Please enter valid Email';
                        }
                      },
                      keyboardTYPE: TextInputType.emailAddress,
                      obscured: false),
                  CustomTextFormField(
                      controller: passwordController,
                      readOnly: false,
                      hint: "Password",
                      iconPath: Icons.lock_outline,
                      validators: (e) {
                        if (passwordController.text == null ||
                            passwordController.text == '') {
                          return '*Please enter Password';
                        }
                      },
                      keyboardTYPE: TextInputType.emailAddress,
                      obscured: true),
                ],
              ),
            ),
            SizedBox(
              height: D.H / 40,
            ),
            CustomButton(
                text: "Sign In",
                color: ColorConstants.primaryBlueColor,
                textColor: ColorConstants.whiteColor,
                bordercolor: ColorConstants.primaryBlueColor,
                onTap: () async {
                  if (_formkey.currentState!.validate()) {
                    await signIn(emailController.text, passwordController.text);
                  }
                }),
            SizedBox(
              height: D.H / 55,
            ),
            GestureDetector(
              onTap: () {
                NavigationHelpers.redirect(context, ResetPasswordScreen());
              },
              child: Text(
                "Forget Password?",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: D.H / 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: D.W / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Container(
                      height: 2,
                      width: D.W / 10,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Or Continue with",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    child: Container(
                      height: 2,
                      width: D.W / 10,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: D.H / 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: D.W / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      CommonUtils.showProgressDialog(context);
                      AuthClass().googleSignin(context);
                    },
                    child: Container(
                      height: D.H / 13,
                      width: D.W / 6.6,
                      decoration: BoxDecoration(
                          color: Color(0xFFE9F4FF),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Center(
                          child:
                              SvgPicture.asset("assets/images/googleicon.svg")),
                    ),
                  ),
                  SizedBox(
                    width: D.W / 10,
                  ),
                  Container(
                      height: D.H / 13.5,
                      width: D.W / 6.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF4460A0),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                        child: Container(
                          child: SvgPicture.asset(
                            "assets/images/facebooklogo.svg",
                            height: D.H / 14.5,
                            width: D.W / 6.4,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              child: Center(
                child: Text.rich(TextSpan(
                    style: GoogleFonts.roboto(fontSize: 15),
                    text: 'Already Have Account? ',
                    children: <InlineSpan>[
                      TextSpan(
                        text: ' Log in',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ])),
              ),
            ),
            SizedBox(
              height: D.H / 30,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signIn(
    String email,
    String password,
  ) async {
    CommonUtils.showProgressDialog(context);
    final uri = ApiEndPoint.login;
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = {
      "email": email,
      "password": password,
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
      LoginModel responsee = LoginModel.fromJson(res);
      PreferenceUtils.putObject("LoginResponse", responsee);

      CommonUtils.hideProgressDialog(context);
      CommonUtils.showGreenToastMessage("Login Successfully");
      if(responsee.user!.first_time==0){
        NavigationHelpers.redirectFromSplash(context, DashBoardScreen(0));

      }else{
        NavigationHelpers.redirectto(context, ChooseYourUseScreen());
      }

    } else {
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showRedToastMessage("Something went wrong");
    }
  }


}
