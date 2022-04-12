import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Utils/common_utils.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/custom_textform_field_for_profile.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/dimensions.dart';
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formkey = GlobalKey<FormState>();
  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 16.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Text(
                            "Change Password",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: D.H / 50,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: D.H / 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        CustomTextFormFieldForProfile(
                          controller: currentPasswordController,
                          readOnly: false,
                          hint: "",
                          validators: (val) {
                            if (currentPasswordController.text == null ||
                                currentPasswordController.text == '') {
                              return '*Please enter current password';
                            }
                          },
                          keyboardTYPE: TextInputType.name,
                          obscured: false,
                          headerText: 'Current Password',
                        ),
                        SizedBox(
                          height: D.H / 70,
                        ),
                        CustomTextFormFieldForProfile(
                          controller: newPasswordController,
                          readOnly: false,
                          hint: "",
                          validators: (val) {
                            if (newPasswordController.text == null ||
                                newPasswordController.text == '') {
                              return '*Please enter new password';
                            }
                          },
                          keyboardTYPE: TextInputType.name,
                          obscured: false,
                          headerText: 'New Password',
                        ),
                        SizedBox(
                          height: D.H / 70,
                        ),
                        CustomTextFormFieldForProfile(
                          controller: confirmPasswordController,
                          readOnly: false,
                          hint: "",
                          validators: (val) {
                            if (confirmPasswordController.text == null ||
                                confirmPasswordController.text == '') {
                              return '*Please enter confirm password';
                            }
                          },
                          keyboardTYPE: TextInputType.name,
                          obscured: false,
                          headerText: 'Confirm Password',
                        ),
                        SizedBox(
                          height: D.H / 70,
                        ),

                        Row(
                          children: [
                            WelcomePageRoundedButton(
                              color: Colors.blue,
                              text: 'SAVE',
                              fontsize: 14,
                              height: D.H / 20,
                              width: D.W/5,
                              btnradius: D.H / 80,
                              fontweight: FontWeight.w500,
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  if(newPasswordController.text==confirmPasswordController.text){
                                  }else{
                                    CommonUtils.showRedToastMessage("Password does not matched");

                                  }
                                } else {
                                  return null;
                                }
                                setState(() {});
                              },
                              bordercolor: ColorConstants.primaryBlueColor,
                              textcolor: ColorConstants.whiteColor,
                            ),
                            SizedBox(
                              width: D.H / 70,
                            ),
                            WelcomePageRoundedButton(
                              color: ColorConstants.greycolor.withOpacity(0.5),
                              text: 'CANCEL',
                              fontsize: 14,
                              height: D.H / 20,
                              width: D.W/5,
                              btnradius: D.H / 80,
                              fontweight: FontWeight.w500,
                              onTap: () {
                              },
                              bordercolor: ColorConstants.greycolor.withOpacity(0.5),
                              textcolor: ColorConstants.whiteColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
