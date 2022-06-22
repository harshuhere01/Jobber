import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:jobber/Constants/api_endpoint.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_button.dart';
import 'package:jobber/CustomWidgets/custom_textform_field.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/login_screen.dart';
import 'package:jobber/auth_class/AuthClass.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.keyboard_backspace,color: Colors.black),
          label: Text(
            "Back",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500, fontSize: D.H / 60,color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Register Account",
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
                    "Fill your details or continue\nwith social media",
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
              CustomTextFormField(
                controller: fnameController,
                readOnly: false,
                hint: "First Name",
                iconPath: Icons.account_circle_outlined,
                validators: (e) {
                  if (fnameController.text == null ||
                      fnameController.text == '') {
                    return '*Please enter Email';
                  } else if (!EmailValidator.validate(fnameController.text)) {
                    return '*Please enter valid Email';
                  }
                },
                keyboardTYPE: TextInputType.emailAddress,
                obscured: false,
              ),
              CustomTextFormField(
                controller: lnameController,
                readOnly: false,
                hint: "Last Name",
                iconPath: Icons.account_circle_outlined,
                validators: (e) {
                  if (lnameController.text == null ||
                      lnameController.text == '') {
                    return '*Please enter Email';
                  } else if (!EmailValidator.validate(lnameController.text)) {
                    return '*Please enter valid Email';
                  }
                },
                keyboardTYPE: TextInputType.emailAddress,
                obscured: false,
              ),
              CustomTextFormField(
                controller: emailController,
                readOnly: false,
                hint: "Email Address",
                iconPath: Icons.email_outlined,
                validators: (e) {
                  if (emailController.text == null ||
                      emailController.text == '') {
                    return '*Please enter Email';
                  } else if (!EmailValidator.validate(emailController.text)) {
                    return '*Please enter valid Email';
                  }
                },
                keyboardTYPE: TextInputType.emailAddress,
                obscured: false,
              ),
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
                obscured: true,
              ),
              /*CustomTextFormField(
                controller: confirmPasswordController,
                readOnly: false,
                hint: "Confirm Password",
                iconPath: Icons.lock_outline,
                validators: (e) {
                  if (confirmPasswordController.text == null ||
                      confirmPasswordController.text == '') {
                    return '*Please enter Confirm Password';
                  }
                },
                keyboardTYPE: TextInputType.emailAddress,
                obscured: true,
              ),*/
              SizedBox(
                height: D.H / 60,
              ),
              CustomButton(
                  text: "Sign up",
                  color: ColorConstants.primaryBlueColor,
                  textColor: ColorConstants.whiteColor,
                  bordercolor: ColorConstants.primaryBlueColor,
                  onTap: () async {
                    print("aaaaaa");
                    if (_formkey.currentState!.validate()) {
                      if (passwordController.text ==
                          confirmPasswordController.text) {
                        await signup("Test", "Test Last", emailController.text, passwordController.text,);

                      } else {
                        Fluttertoast.showToast(
                            msg: "PassWord Does Not Matched");
                      }
                    }
                    setState(() {});
                  }),
              SizedBox(
                height: D.H / 30,
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
                height: D.H / 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: D.W / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:(){
                        CommonUtils.showProgressDialog(context);
                        AuthClass().googleSignin(context);
                      },
                      child: Container(
                        height: D.H / 16,
                        width: D.H / 16,
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
                        height: D.H / 16,
                        width: D.H / 16,
                        decoration: BoxDecoration(
                            color: Color(0xFF4460A0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
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
              InkWell(
                onTap: (){
                  NavigationHelpers.redirect(context, LoginScreen());
                },
                child: Container(
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
              ),
              SizedBox(
                height: D.H / 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> signup(
      String fname,
      String lname,
      String email,
      String password,
      ) async {
    CommonUtils.showProgressDialog(context);
    final uri = ApiEndPoint.REGISTER;
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = {
      "first_name": fname,
      "last_name": lname,
      "email": email,
      "password": password,
      "type": "2",
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
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showGreenToastMessage(res["message"]);
      NavigationHelpers.redirectto(context, LoginScreen());
    } else {
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showRedToastMessage(res["message"]);
    }
  }


}
