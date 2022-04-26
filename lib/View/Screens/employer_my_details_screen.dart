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
  final NameController = TextEditingController();
  final phoneController = TextEditingController();
  final industryController = TextEditingController();
  final sizeController = TextEditingController();
  final stateController = TextEditingController();
  final detailController = TextEditingController();
  final ceoNameController = TextEditingController();
  final ownershipController = TextEditingController();
  final countryController = TextEditingController();
  final cityController = TextEditingController();
  final emailController = TextEditingController();
  final locationController = TextEditingController();
  final websiteController = TextEditingController();
  final officeNumberController = TextEditingController();
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
                    controller: NameController,
                    readOnly: false,
                    hint: "Atom Technology",
                    validators: (val) {
                      if (NameController.text == null ||
                          NameController.text == '') {
                        return '*Please enter first name';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Name',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: phoneController,
                    readOnly: false,
                    hint: "7637465678",
                    validators: (val) {
                      if (phoneController.text == null ||
                          phoneController.text == '') {
                        return '*Please enter phone';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Phone',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: industryController,
                    readOnly: false,
                    hint: "Marketing",
                    validators: (val) {
                      if (industryController.text == null ||
                          industryController.text == '') {
                        return '*Please enter industry';
                      } else if (!EmailValidator.validate(
                          emailController.text)) {
                        return '*Please enter valid Email';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Industry',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: stateController,
                    readOnly: false,
                    hint: "select state",
                    validators: (val) {
                      if (stateController.text == null ||
                          stateController.text == '') {
                        return '*Please enter state';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'State',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: detailController,
                    readOnly: false,
                    hint: "Employer Detail",
                    validators: (val) {
                      if (detailController.text == null ||
                          detailController.text == '') {
                        return '*Please enter detail';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Birth Date',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),

                  CustomTextFormFieldForProfile(
                    controller: emailController,
                    readOnly: false,
                    hint: "email",
                    validators: (val) {
                      if (emailController.text == null ||
                          emailController.text == '') {
                        return '*Please enter email';
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
                    controller: ceoNameController,
                    readOnly: false,
                    hint: "Chris Silver",
                    validators: (val) {
                      if (ceoNameController.text == null ||
                          ceoNameController.text == '') {
                        return '*Please enter ceo name';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'CEO Name',
                  ),
                  SizedBox(
                    height: D.H / 70,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: ownershipController,
                    readOnly: false,
                    hint: "Chris Silver",
                    validators: (val) {
                      if (ownershipController.text == null ||
                          ownershipController.text == '') {
                        return '*Please enter ownership';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'OwnerShip Type',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: stateController,
                    readOnly: false,
                    hint: "select state",
                    validators: (val) {
                      if (stateController.text == null ||
                          stateController.text == '') {
                        return '*Please enter state';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'City',
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: officeNumberController,
                    readOnly: false,
                    hint: "5",
                    validators: (val) {
                      if (officeNumberController.text == null ||
                          officeNumberController.text == '') {
                        return '*Please enter office number';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'No of Office',
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: websiteController,
                    readOnly: false,
                    hint: "www.test.com",
                    validators: (val) {
                      if (websiteController.text == null ||
                          websiteController.text == '') {
                        return '*Please enter website';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Website',
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CustomTextFormFieldForProfile(
                    controller: locationController,
                    readOnly: false,
                    hint: "Location",
                    validators: (val) {
                      if (locationController.text == null ||
                          locationController.text == '') {
                        return '*Please enter location';
                      }
                    },
                    keyboardTYPE: TextInputType.name,
                    obscured: false,
                    headerText: 'Location',
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
