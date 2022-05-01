import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobber/CustomWidgets/custom_textform_field_for_profile.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';

class WriteIdea extends StatefulWidget {
  const WriteIdea({Key? key}) : super(key: key);

  @override
  _WriteIdeaState createState() => _WriteIdeaState();
}

class _WriteIdeaState extends State<WriteIdea> {

  TextEditingController controller=TextEditingController();

  final _formkey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final bithDateController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final skillController = TextEditingController();
  final languageController = TextEditingController();
  var _selectedGender = "male";

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
                            "Write A Idea",
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
                  CustomTextFormFieldForProfile(
                    controller: firstNameController,
                    readOnly: false,
                    hint: "Title",
                    validators: (val) {
                      if (firstNameController.text == null ||
                          firstNameController.text == '') {
                        return '*Please enter Title';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Title',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: lastNameController,
                    readOnly: false,
                    hint: "Select Post Category",
                    validators: (val) {
                      if (lastNameController.text == null ||
                          lastNameController.text == '') {
                        return '*Please enter Post Category';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Post Category',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text(
                          "Image",
                          style: GoogleFonts.roboto(
                              color: Colors.grey.shade700,
                              fontSize: D.H / 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Icon(Icons.image,size: D.H/7,color: Colors.grey.shade500,),
                        onTap: () {

                        },
                      ),
                    ],
                  ),
                  CustomTextFormFieldForProfile(
                    controller: emailController,
                    readOnly: false,
                    hint: "Description",
                    validators: (val) {
                      if (emailController.text == null ||
                          emailController.text == '') {
                        return '*Please enter Description';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Description',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WelcomePageRoundedButton(
                        color: ColorConstants.primaryBlueColor,
                        text: 'Submit',
                        fontsize: 18,
                        height: D.H /15,
                        width: D.W/2.4,
                        btnradius: D.H /50,
                        fontweight: FontWeight.w500,
                        onTap: () async {
                          if (_formkey.currentState!.validate()) {
                          } else {
                            return null;
                          }
                          CommonUtils.showProgressDialog(context);
                          await Future.delayed(Duration(milliseconds: 2000), () {
                            CommonUtils.hideProgressDialog(context);
                            CommonUtils.showGreenToastMessage("Your Idea has been gone for verification ");
                          });
                          setState(() {

                          });
                        },
                        bordercolor: ColorConstants.primaryBlueColor,
                        textcolor: ColorConstants.whiteColor,
                      ),
                      WelcomePageRoundedButton(
                        color: Colors.grey.shade200,
                        text: 'Cancel',
                        fontsize: 18,
                        height: D.H / 15,
                        width: D.W/2.4,
                        btnradius: D.H / 50,
                        fontweight: FontWeight.w500,
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                          } else {
                            return null;
                          }
                          setState(() {});
                        },
                        bordercolor: Colors.grey.shade200,
                        textcolor: Colors.grey.shade600,
                      ),
                    ],
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
