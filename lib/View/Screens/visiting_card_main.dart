import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_border_textform_field.dart';
import 'package:jobber/CustomWidgets/gender_box.dart';
import 'package:jobber/CustomWidgets/text_medium_500.dart';
import 'package:jobber/CustomWidgets/visiting_card_bottom_button.dart';
import 'package:jobber/CustomWidgets/welcome_page_rounded_button.dart';
import 'package:jobber/Utils/common_utils.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/dash_board_screen.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../CustomWidgets/tab_button.dart';

class VisitingCardMain extends StatefulWidget {
  const VisitingCardMain({Key? key}) : super(key: key);

  @override
  State<VisitingCardMain> createState() => _VisitingCardMainState();
}

class _VisitingCardMainState extends State<VisitingCardMain> {
  int _selectedPage = 0;
  bool isPageSelected = false;
  PageController _pageController = PageController(
    keepPage: true,
  );
  late File uploadedphoto ;
  String userPhotoPath = 'assets/images/user_visiting_card.png';
  String userName = 'Your Name';
  String userJobCity = 'Location';
  String userOtherdetails = 'Education | Experience |  Location';
  String userworkExperience = 'Experience';
  String userCompanyName = '';
  String userJobTitle = 'Preferred Job Location';
  String usereducation = 'Education';
  String userdegree = '0';
  String useruniversity = '0';
  bool photouploaded = false;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController jobcitycontroller = TextEditingController();
  final _formkey1 = GlobalKey<FormState>();
  int genderradioGroupValue = 0;

  TextEditingController experiencecontroller = TextEditingController();
  TextEditingController jobtitlecontroller = TextEditingController();
  TextEditingController companynamecontroller = TextEditingController();
  bool yesWorkExperience = true;
  bool noWorkExperience = false;
  final _formkey2 = GlobalKey<FormState>();
  double _value = 50000;

  TextEditingController educationcontroller = TextEditingController();
  TextEditingController degreecontroller = TextEditingController();
  TextEditingController universcitycontroller = TextEditingController();
  final _formkey3 = GlobalKey<FormState>();

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController.animateToPage(
        pageNum,
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            height: D.H / 1.05,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: D.H / 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        SizedBox(
                          height: D.H / 62,
                        ),
                        Center(
                          child: Container(
                            height: D.H / 12,
                            width: D.H / 6,
                            child: Image.asset("assets/images/splashimage.png"),
                          ),
                        ),
                        SizedBox(
                          height: D.H / 62,
                        ),
                        TextMedium500(
                          text: 'Let\’s make your visiting card',
                          fontSize: D.H / 35,
                          textColor: ColorConstants.blackColor,
                        ),
                        SizedBox(
                          height: D.H / 62,
                        ),
                        Stack(children: [
                          Image.asset('assets/images/edit_visiting_card.png'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              photouploaded
                                  ? Expanded(
                                      flex: 8,
                                      child: SizedBox(
                                        height: 195,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10)),
                                          child: Image.file(
                                            uploadedphoto,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ))
                                  : Expanded(
                                      flex: 8,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: D.H / 18,
                                          ),
                                          SizedBox(
                                              height: 147,
                                              width: 122,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10)),
                                                child: Image.asset(
                                                  userPhotoPath,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                              Expanded(
                                flex: 17,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: D.W / 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        userName,
                                        style: GoogleFonts.roboto(
                                          color: ColorConstants.whiteColor,
                                          fontSize: D.H / 40,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: D.H / 70,
                                      ),
                                      Text(
                                        '$userJobTitle\n$userCompanyName',
                                        style: GoogleFonts.roboto(
                                          color: ColorConstants.whiteColor,
                                          fontSize: D.H / 60,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: D.H / 50,
                                      ),
                                      Text(
                                        '$usereducation | $userworkExperience | $userJobCity',
                                        style: GoogleFonts.roboto(
                                          color: ColorConstants.whiteColor,
                                          fontSize: D.H / 100,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: D.H / 50),
                                  child: Stack(
                                    children: [
                                      Line(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TabButton(
                                            text: '1',
                                            pageNumber: 0,
                                            selectedPage: _selectedPage,
                                            onPressed: () {
                                              _changePage(0);
                                            },
                                            color: _selectedPage >= 0
                                                ? ColorConstants
                                                    .primaryGreenColor
                                                : ColorConstants.whiteColor,
                                            borderColor:
                                                ColorConstants.primaryBlueColor,
                                          ),
                                          TabButton(
                                            text: '2',
                                            pageNumber: 1,
                                            selectedPage: _selectedPage,
                                            onPressed: () {
                                              _changePage(1);
                                            },
                                            color: _selectedPage >= 1
                                                ? ColorConstants
                                                    .primaryGreenColor
                                                : ColorConstants.whiteColor,
                                            borderColor:
                                                ColorConstants.primaryBlueColor,
                                          ),
                                          TabButton(
                                            text: '3',
                                            pageNumber: 2,
                                            selectedPage: _selectedPage,
                                            onPressed: () {
                                              _changePage(2);
                                            },
                                            color: _selectedPage >= 2
                                                ? ColorConstants
                                                    .primaryGreenColor
                                                : ColorConstants.whiteColor,
                                            borderColor:
                                                ColorConstants.primaryBlueColor,
                                          ),
                                          TabButton(
                                            text: '4',
                                            pageNumber: 3,
                                            selectedPage: _selectedPage,
                                            onPressed: () {
                                              _changePage(3);
                                            },
                                            color: _selectedPage >= 3
                                                ? ColorConstants
                                                    .primaryGreenColor
                                                : ColorConstants.whiteColor,
                                            borderColor:
                                                ColorConstants.primaryBlueColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: PageView(
                              physics: NeverScrollableScrollPhysics(),
                              onPageChanged: (int page) {
                                setState(() {
                                  _selectedPage = page;
                                });
                              },
                              controller: _pageController,
                              children: [
                                _buildVisitingCard1(),
                                _buildVisitingCard2(),
                                _buildVisitingCard3(),
                                _buildVisitingCard4(),
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildVisitingCard1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 150),
      child: Form(
        key: _formkey1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Details',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: ColorConstants.blackColor,
                fontSize: D.H / 50,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: D.H / 80,
            ),
            CustomBorderTextFormField(
                controller: namecontroller,
                readOnly: false,
                hint: "Name",
                validators: (e) {
                  if (namecontroller.text == null ||
                      namecontroller.text == '') {
                    return '*Please enter Name';
                  }
                },
                keyboardTYPE: TextInputType.name),
            CustomBorderTextFormField(
                controller: jobcitycontroller,
                readOnly: false,
                hint: "Job City",
                validators: (e) {
                  if (jobcitycontroller.text == null ||
                      jobcitycontroller.text == '') {
                    return '*Please enter City';
                  }
                },
                keyboardTYPE: TextInputType.name),
            Text(
              'Gender :',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: ColorConstants.greycolor,
                fontSize: D.H / 50,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: D.H / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GenderBox(
                    radioGroupValue: genderradioGroupValue,
                    radioValue: 1,
                    onChenaged: (val) {
                      setState(() {
                        genderradioGroupValue = val;
                      });
                    },
                    ontap: () {
                      setState(() {
                        genderradioGroupValue = 1;
                      });
                    },
                    imgPath: 'assets/images/user_male.png'),
                SizedBox(
                  width: D.W / 10,
                ),
                GenderBox(
                    radioGroupValue: genderradioGroupValue,
                    radioValue: 2,
                    onChenaged: (val) {
                      setState(() {
                        genderradioGroupValue = val;
                      });
                    },
                    ontap: () {
                      setState(() {
                        genderradioGroupValue = 2;
                      });
                    },
                    imgPath: 'assets/images/female_user.png'),
              ],
            ),
            Expanded(
                child: SizedBox(
              height: D.H / 55,
            )),
            VisitingCardButton(
              color: ColorConstants.primaryBlueColor,
              text: 'Next',
              fontsize: 22,
              height: D.H / 20,
              width: D.W,
              btnradius: D.H / 100,
              fontweight: FontWeight.w900,
              onTap: () {
                if (_formkey1.currentState!.validate()) {
                  if (genderradioGroupValue == 0) {
                    CommonUtils.showRedToastMessage("Please select gender");
                  } else {
                    setState(() {
                      userName = namecontroller.text;
                      userJobCity = jobcitycontroller.text;
                    });
                    _changePage(1);
                  }
                }
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _buildVisitingCard2() {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 200),
        child: Form(
          key: _formkey2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Experience Details',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: ColorConstants.blackColor,
                  fontSize: D.H / 50,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: D.H / 200,
              ),
              Center(
                child: Text(
                  'Do you have any experience?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: ColorConstants.greycolor,
                    fontSize: D.H / 50,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: D.H / 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WelcomePageRoundedButton(
                    textcolor: yesWorkExperience
                        ? ColorConstants.whiteColor
                        : ColorConstants.blackColor,
                    color: yesWorkExperience
                        ? ColorConstants.primaryBlueColor
                        : ColorConstants.whiteColor,
                    bordercolor: yesWorkExperience
                        ? ColorConstants.primaryBlueColor
                        : ColorConstants.blackColor,
                    text: 'Yes',
                    fontsize: 22,
                    height: D.H / 20,
                    width: D.H / 10,
                    btnradius: D.H / 100,
                    fontweight: FontWeight.w500,
                    onTap: () {
                      yesWorkExperience = true;
                      noWorkExperience = false;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: D.W / 20,
                  ),
                  WelcomePageRoundedButton(
                    textcolor: noWorkExperience
                        ? ColorConstants.whiteColor
                        : ColorConstants.blackColor,
                    color: noWorkExperience
                        ? ColorConstants.primaryBlueColor
                        : ColorConstants.whiteColor,
                    bordercolor: noWorkExperience
                        ? ColorConstants.primaryBlueColor
                        : ColorConstants.blackColor,
                    text: 'No',
                    fontsize: 22,
                    height: D.H / 20,
                    width: D.H / 10,
                    btnradius: D.H / 100,
                    fontweight: FontWeight.w500,
                    onTap: () {
                      noWorkExperience = true;
                      yesWorkExperience = false;
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(
                height: D.H / 110,
              ),
              yesWorkExperience
                  ? CustomBorderTextFormField(
                      controller: experiencecontroller,
                      readOnly: false,
                      hint: "Total work experience",
                      validators: (e) {
                        if (experiencecontroller.text == null ||
                            experiencecontroller.text == '') {
                          return '*Please enter Total experience';
                        }
                      },
                      keyboardTYPE: TextInputType.name)
                  : Container(),
              CustomBorderTextFormField(
                  controller: jobtitlecontroller,
                  readOnly: false,
                  hint: "Job title",
                  validators: (e) {
                    if (jobtitlecontroller.text == null ||
                        jobtitlecontroller.text == '') {
                      return '*Please enter Job title';
                    }
                  },
                  keyboardTYPE: TextInputType.name),
              CustomBorderTextFormField(
                  controller: companynamecontroller,
                  readOnly: false,
                  hint: "Company Name",
                  validators: (e) {
                    if (companynamecontroller.text == null ||
                        companynamecontroller.text == '') {
                      return '*Please enter Company name';
                    }
                  },
                  keyboardTYPE: TextInputType.name),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: D.H / 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current monthly salary',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: ColorConstants.blackColor,
                        fontSize: D.H / 60,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '₹${_value.toInt().toString()}/. Rs',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: ColorConstants.blackColor,
                        fontSize: D.H / 60,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SfSlider(
                activeColor: ColorConstants.primaryBlueColor,
                min: 0.0,
                max: 100000.0,
                value: _value,
                onChanged: (dynamic value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              VisitingCardButton(
                color: ColorConstants.primaryBlueColor,
                text: 'Next',
                fontsize: 22,
                height: D.H / 20,
                width: D.W,
                btnradius: D.H / 100,
                fontweight: FontWeight.w900,
                onTap: () {
                  if (_formkey2.currentState!.validate()) {
                    if (_value == 0) {
                      CommonUtils.showRedToastMessage(
                          "Please select monthly salary");
                    } else {
                      setState(() {
                        userworkExperience = experiencecontroller.text;
                        userJobTitle = jobtitlecontroller.text;
                        userCompanyName = 'at ${companynamecontroller.text}';
                      });
                      _changePage(2);
                    }
                  }
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildVisitingCard3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 150),
      child: Form(
        key: _formkey3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education Details',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: ColorConstants.blackColor,
                fontSize: D.H / 50,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: D.H / 100,
            ),
            CustomBorderTextFormField(
                controller: educationcontroller,
                readOnly: false,
                hint: "Education",
                validators: (e) {
                  if (educationcontroller.text == null ||
                      educationcontroller.text == '') {
                    return '*Please enter Education';
                  }
                },
                keyboardTYPE: TextInputType.name),
            CustomBorderTextFormField(
                controller: degreecontroller,
                readOnly: false,
                hint: "Degree / Specialization",
                validators: (e) {
                  if (degreecontroller.text == null ||
                      degreecontroller.text == '') {
                    return '*Please enter Degree';
                  }
                },
                keyboardTYPE: TextInputType.name),
            CustomBorderTextFormField(
                controller: universcitycontroller,
                readOnly: false,
                hint: "University / Institute",
                validators: (e) {
                  if (universcitycontroller.text == null ||
                      universcitycontroller.text == '') {
                    return '*Please enter University';
                  }
                },
                keyboardTYPE: TextInputType.name),
            Expanded(child: SizedBox()),
            VisitingCardButton(
              color: ColorConstants.primaryBlueColor,
              text: 'Next',
              fontsize: 22,
              height: D.H / 20,
              width: D.W,
              btnradius: D.H / 100,
              fontweight: FontWeight.w900,
              onTap: () {
                if (_formkey3.currentState!.validate()) {
                  setState(() {
                    usereducation = educationcontroller.text;
                    userdegree = degreecontroller.text;
                    useruniversity = universcitycontroller.text;
                  });
                  _changePage(3);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildVisitingCard4() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: D.H / 50,
          ),
          Text(
            'Upload Your Profile Picture',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: D.H / 50,
          ),
          Text(
            'HR needs your profile picture to confirm if your profile is real and not fake',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: ColorConstants.blackColor.withOpacity(0.75),
              fontSize: D.H / 50,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: D.H / 30,
          ),
          WelcomePageRoundedButton(
            textcolor: ColorConstants.whiteColor,
            color: ColorConstants.primaryBlueColor,
            bordercolor: ColorConstants.primaryBlueColor,
            text: 'Choose From Gallery',
            fontsize: 22,
            height: D.H / 17,
            width: D.H,
            btnradius: D.H / 100,
            fontweight: FontWeight.w900,
            onTap: () {
              _getFromGallery();
            },
          ),
          SizedBox(
            height: D.H / 50,
          ),
          WelcomePageRoundedButton(
            textcolor: ColorConstants.primaryBlueColor,
            color: ColorConstants.whiteColor,
            bordercolor: ColorConstants.primaryBlueColor,
            text: 'Upload From Camera',
            fontsize: 22,
            height: D.H / 17,
            width: D.H,
            btnradius: D.H / 100,
            fontweight: FontWeight.w900,
            onTap: () {
              _getFromCamera();
            },
          ),
          SizedBox(
            height: D.H / 50,
          ),
          WelcomePageRoundedButton(
            textcolor: ColorConstants.primaryBlueColor,
            color: ColorConstants.whiteColor,
            bordercolor: ColorConstants.primaryBlueColor,
            text: 'Save',
            fontsize: 22,
            height: D.H / 17,
            width: D.H,
            btnradius: D.H / 100,
            fontweight: FontWeight.w900,
            onTap: () {

            },
          ),
          SizedBox(
            height: D.H / 50,
          ),
          InkWell(
            onTap: () {
              NavigationHelpers.redirectFromSplash(context, DashBoardScreen(0));
            },
            child: Center(
              child: Text(
                'Skip for now',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: ColorConstants.primaryBlueColor,
                  fontSize: D.H / 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        photouploaded = true;
        uploadedphoto = File(pickedFile.path);
      });
    }
  }

  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      // imageFile = File(pickedFile.path);
      setState(() {
        photouploaded = true;
        uploadedphoto = File(pickedFile.path);
      });
    }
  }
}
