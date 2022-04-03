import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_button.dart';
import 'package:jobber/View/Screens/register_screen.dart';

import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Stack(
            children: [
              Image.asset("assets/images/authbackimage.png"),
              Positioned(
                  top: D.H / 7.5,
                  left: D.W / 5,
                  child: Center(
                      child: Image.asset("assets/images/authbacklogo.png"))),
              Column(
                children: [
                  Container(
                    height: 300,
                  ),
                  Expanded(
                      child: Container(
                    width: D.W,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: D.W / 15,top: D.W / 15),
                          child: Row(
                            children: [
                              Text(
                                "Create better\ntoghether.",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: D.H / 42,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: D.W / 15),
                          child: Row(
                            children: [
                              Text(
                                "Join Our Community",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: D.H / 20,
                        ),
                        CustomButton(
                          text: "Register",
                          color: ColorConstants.primaryBlueColor,
                          bordercolor: ColorConstants.primaryBlueColor,
                          onTap: () {
                            NavigationHelpers.redirect(context, RegisterScreen());

                          },
                          textColor: ColorConstants.whiteColor,
                        ),
                        SizedBox(
                          height: D.H / 80,
                        ),
                        CustomButton(
                          text: "Login",
                          color: ColorConstants.whiteColor,
                          bordercolor: ColorConstants.primaryBlueColor,
                          onTap: () {},
                          textColor: ColorConstants.primaryBlueColor,
                        ),
                        SizedBox(
                          height: D.H / 50,
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
                          height: D.H / 60,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: D.W / 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: D.H/13,
                                width: D.W/6.6,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE9F4FF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/images/googleicon.svg")),
                              ),
                              SizedBox(
                                width: D.W / 10,
                              ),
                              Container(
                                  height: D.H/13.5,
                                  width: D.W/6.8,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF4460A0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Center(
                                    child: Container(
                                      child: SvgPicture.asset(
                                        "assets/images/facebooklogo.svg",
                                        height: D.H/14.5,
                                        width: D.W/6.4,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: D.H / 7.5,
                        ),
                        Expanded(
                          child: Center(
                            child: Text.rich(TextSpan(
                                style: GoogleFonts.roboto(fontSize: 15),
                                text: 'Already Have Account? ',
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: ' Log in',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ])),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
