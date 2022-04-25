import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/CustomWidgets/custom_textform_field_for_profile.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/dimensions.dart';

class EmployerMyDetailScreen extends StatefulWidget {
  const EmployerMyDetailScreen({Key? key}) : super(key: key);

  @override
  _EmployerMyDetailScreenState createState() => _EmployerMyDetailScreenState();
}

class _EmployerMyDetailScreenState extends State<EmployerMyDetailScreen> {

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
                            "My Details",
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
                    hint: "Ram",
                    validators: (val) {
                      if (firstNameController.text == null ||
                          firstNameController.text == '') {
                        return '*Please enter first name';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'First Name',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: lastNameController,
                    readOnly: false,
                    hint: "Kumar",
                    validators: (val) {
                      if (lastNameController.text == null ||
                          lastNameController.text == '') {
                        return '*Please enter last name';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Last Name',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: emailController,
                    readOnly: false,
                    hint: "test@gmail.com",
                    validators: (val) {
                      if (emailController.text == null ||
                          emailController.text == '') {
                        return '*Please enter Email';
                      } else if (!EmailValidator.validate(
                          emailController.text)) {
                        return '*Please enter valid Email';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Email',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: fatherNameController,
                    readOnly: false,
                    hint: "Rajesh Kumar",
                    validators: (val) {
                      if (fatherNameController.text == null ||
                          fatherNameController.text == '') {
                        return '*Please enter father name';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Father Name',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: bithDateController,
                    readOnly: false,
                    hint: "Birth Date",
                    validators: (val) {
                      if (bithDateController.text == null ||
                          bithDateController.text == '') {
                        return '*Please enter father name';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Birth Date',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Row(
                      children: [
                        Text(
                          "Gender",
                          style: GoogleFonts.roboto(
                              fontSize: 14, color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "*",
                          style:
                              GoogleFonts.roboto(fontSize: 12, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left: 6.0),
                   child: Row(children: [
                     Text(
                       "Male",
                       style: GoogleFonts.roboto(
                           fontSize: 14, color: Colors.black.withOpacity(0.6)),
                     ),
                     new Radio(onChanged: (value) {
                       _selectedGender="male";
                       setState(() {

                       });
                     }, groupValue: _selectedGender, value: "male",),
                     SizedBox(width: 14,),
                     Text(
                       "Female",
                       style: GoogleFonts.roboto(
                           fontSize: 14, color: Colors.black.withOpacity(0.6)),
                     ),
                     new Radio(onChanged: (value) {
                       _selectedGender="Female";
                       setState(() {

                       });
                     }, groupValue: _selectedGender, value: "Female",),
                   ],),
                 ),
                  SizedBox(
                    height: 4,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: skillController,
                    readOnly: false,
                    hint: "Skill",
                    validators: (val) {
                      if (skillController.text == null ||
                          skillController.text == '') {
                        return '*Please enter skill';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Skill',
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: languageController,
                    readOnly: false,
                    hint: "Language",
                    validators: (val) {
                      if (languageController.text == null ||
                          languageController.text == '') {
                        return '*Please enter language';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Language',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  WelcomePageRoundedButton(
                    color: ColorConstants.primaryBlueColor,
                    text: 'SAVE',
                    fontsize: 22,
                    height: D.H / 15,
                    width: D.W,
                    btnradius: D.H / 50,
                    fontweight: FontWeight.w500,
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                      } else {
                        return null;
                      }
                      setState(() {});
                    },
                    bordercolor: ColorConstants.primaryBlueColor,
                    textcolor: ColorConstants.whiteColor,
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
