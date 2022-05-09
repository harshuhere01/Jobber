import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';

class MyResumeScreen extends StatefulWidget {
  const MyResumeScreen({Key? key}) : super(key: key);

  @override
  _MyResumeScreenState createState() => _MyResumeScreenState();
}

class _MyResumeScreenState extends State<MyResumeScreen> {
  File? file;
  static List<String> resumeList = <String>[];

  getPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    resumeList = prefs.getStringList("resumeList")??[];
    setState(() {

    });
  }

  @override
  void initState() {
   getPreferences();
    super.initState();
  }
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
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                        "My Resume",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: D.H / 50,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: D.H / 35),
              Padding(
                padding:  EdgeInsets.only(right:D.H / 40,left:D.H / 40,top:D.H / 35),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /*Container(
                          width: D.W / 2.6,
                          height: D.H / 19,
                          child: RaisedButton(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            onPressed: ()  {

                            },
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: D.H / 50,
                                  ),
                                  Text("Create Resume",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: D.H / 60)),
                                ],
                              ),
                            ),
                          ),
                        ),*/
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: D.W / 2.6,
                            height: D.H / 19,
                            child: RaisedButton(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              onPressed: () async {
                                FilePickerResult? result = await FilePicker.platform.pickFiles(
                                  type: FileType.custom,
                                  allowedExtensions: ['pdf', 'doc'],
                                );

                                if (result != null) {
                                  file = File(result.files.single.path.toString());
                                  var name = file.toString().split("/").last;
                                  print("Name:"+name.toString());
                                  resumeList.add(name.toString());

                                  final prefs = await SharedPreferences.getInstance();
                                  getPreferences();
                                  prefs.setStringList("resumeList", resumeList);
                                  setState(() {

                                  });
                                } else {
                                  // User canceled the picker
                                }
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: D.H / 50,
                                    ),
                                    Text("Upload Resume",
                                        style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: D.H / 60)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: D.H / 30),
                    ListView.builder(
                        itemCount: resumeList.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: D.H / 100, right: D.H / 100, top: D.H / 100),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: D.H / 14,
                              decoration: BoxDecoration(
                                color: ColorConstants.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset:
                                    Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(D.W / 60.0),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(D.W / 30.0),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.picture_as_pdf,
                                        color: Colors.grey,
                                        size: D.H / 40,
                                      ),
                                      SizedBox(width: D.H / 80),
                                      Text(resumeList[index],
                                          style: GoogleFonts.roboto(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: D.H / 55)),
                                      SizedBox(width: D.H / 80),
                                      GestureDetector(
                                        onTap: () async {
                                          final prefs = await SharedPreferences.getInstance();
                                          resumeList.removeAt(index);
                                          prefs.setStringList("resumeList", resumeList);
                                          setState(() {

                                          });
                                        },
                                        child: Icon(
                                          Icons.close_sharp,
                                          color: Colors.grey,
                                          size: D.H / 40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                    SizedBox(height: D.H / 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("TITLE",
                            style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 65)),
                        Padding(
                          padding:  EdgeInsets.only(right:D.W/ 5),
                          child: Text("CREATED DATE",
                              style: GoogleFonts.roboto(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: D.H / 65)),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: D.H / 45,bottom: D.H / 45),
                      child: Row(
                        children: List.generate(150~/1, (index) => Expanded(
                          child: Container(
                            color: index%2==0?Colors.transparent
                                :Colors.grey[300],
                            height: 1,
                          ),
                        )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lorem ipsum",
                            style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 60)),
                        Padding(
                          padding:  EdgeInsets.only(right:D.W/ 5),
                          child: Container(
                              height: D.H/45,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(D.W / 100.0),
                                ),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(left: D.W / 60.0,right:D.W / 60.0 ),
                                child: Center(child: Text("5th feb,2022",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: D.H/75))),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: D.H / 45,bottom: D.H / 45),
                      child: Row(
                        children: List.generate(150~/1, (index) => Expanded(
                          child: Container(
                            color: index%2==0?Colors.transparent
                                :Colors.grey[300],
                            height: 2,
                          ),
                        )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("test",
                            style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 60)),
                        Padding(
                          padding:  EdgeInsets.only(right:D.W/ 5),
                          child: Container(
                              height: D.H/45,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(D.W / 100.0),
                                ),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(left: D.W / 60.0,right:D.W / 60.0 ),
                                child: Center(child: Text("15th feb,2022",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: D.H/75))),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: D.H / 45,bottom: D.H / 45),
                      child: Row(
                        children: List.generate(150~/1, (index) => Expanded(
                          child: Container(
                            color: index%2==0?Colors.transparent
                                :Colors.grey[300],
                            height: 2,
                          ),
                        )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Laravel(Default)",
                            style: GoogleFonts.roboto(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: D.H / 57)),
                        Padding(
                          padding:  EdgeInsets.only(right:D.W/ 5),
                          child: Container(
                              height: D.H/45,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(D.W / 100.0),
                                ),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(left: D.W / 60.0,right:D.W / 60.0 ),
                                child: Center(child: Text("18th feb,2022",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: D.H/75))),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: D.H / 40),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: D.W / 2,
                          child: Divider(
                            color: ColorConstants.greycolor,
                            thickness: 2,
                          )),
                    ),
                    SizedBox(height: D.H / 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Show 10 entries ",
                            style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: D.H / 57)),
                        Text("Showing 1 to 3 of 3 entries",
                            style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 57)),
                      ],
                    ),
                    SizedBox(height: D.H / 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Previous",
                            style: GoogleFonts.roboto(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500,
                                fontSize: D.H / 57)),
                        Padding(
                          padding:  EdgeInsets.only(left:D.H / 70,right: D.H / 70),
                          child: Container(
                            width: D.W / 12,
                            height: D.W / 12,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(D.W / 60.0),
                              ),
                            ),
                            child: Center(child: Text("1",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 57)),)
                          ),
                        ),
                        Text("next",
                            style: GoogleFonts.roboto(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 57)),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
