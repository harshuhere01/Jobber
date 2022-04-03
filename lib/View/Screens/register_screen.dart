import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_button.dart';
import 'package:jobber/CustomWidgets/custom_textform_field.dart';

import '../../Utils/dimensions.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leading: IconButton(icon: Icon(CupertinoIcons.left_chevron,color: Colors.black87,),onPressed: (){}),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: D.W/20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Register Account",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: D.H/30),),
              ],
            ),
            SizedBox(height: D.H/90,),
            Row(
              children: [
                Text("Fill your details or continue\nwith social media",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: D.H/65,color: Colors.black.withOpacity(0.5)),),
              ],
            ),
            SizedBox(height: D.H/50,),
            CustomTextFormField(controller: controller, readOnly: false, hint: "Email Address", iconPath:Icons.email_outlined,  validators: (e) {}, keyboardTYPE: TextInputType.emailAddress),
            CustomTextFormField(controller: controller, readOnly: false, hint: "Password", iconPath:Icons.lock_outline,  validators: (e) {}, keyboardTYPE: TextInputType.emailAddress),
            CustomTextFormField(controller: controller, readOnly: false, hint: "Confirm Password", iconPath:Icons.lock_outline,  validators: (e) {}, keyboardTYPE: TextInputType.emailAddress),
            CustomButton(text: "Sign up", color: ColorConstants.primaryBlueColor, textColor: ColorConstants.whiteColor, bordercolor: ColorConstants.primaryBlueColor, onTap: (){}),
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
            Expanded(child: Container(),
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
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ])),
              ),
            ),
            SizedBox(
              height: D.H / 60,
            ),
          ],
        ),
      ),
    );
  }
}
