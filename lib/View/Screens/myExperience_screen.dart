import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';

class MyExperienceScreen extends StatefulWidget {
  const MyExperienceScreen({Key? key}) : super(key: key);

  @override
  _MyExperienceScreenState createState() => _MyExperienceScreenState();
}

class _MyExperienceScreenState extends State<MyExperienceScreen> {
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
                        "My Experience",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: D.H / 50,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: D.H / 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: D.W / 30),
                    child: Text("Experience",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: D.H / 45)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: D.W / 30),
                    child: Container(
                      width: D.W / 2.25,
                      height: D.H / 18,
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        onPressed: () {},
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
                              Text("Add Experience",
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: D.H / 55)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: D.H / 35),
              Container(
                width: MediaQuery.of(context).size.width,
                height: D.H / 5.2,
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(D.W / 60.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(D.W / 30.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Accountant",
                                style: GoogleFonts.roboto(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: D.H / 50)),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Container(
                                  child: Row(
                                children: [
                                  Container(
                                    width: D.W / 12,
                                    height: D.W / 12,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(D.W / 50.0),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.grey,
                                      size: D.H / 50,
                                    ),
                                  ),
                                  SizedBox(width: D.H / 80),
                                  Container(
                                    width: D.W / 12,
                                    height: D.W / 12,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(D.W / 50.0),
                                      ),
                                    ),
                                    child: Icon(Icons.delete_rounded,
                                        color: Colors.grey, size: D.H / 50),
                                  ),
                                ],
                              )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text("Casepoint",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: D.H / 55)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("30th Nov,-31st Jan,2022|Afghanistan",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 55)),
                          ],
                        ),
                        Container(
                            child: Text(
                                "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 55))),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: D.H / 50),
              Container(
                width: MediaQuery.of(context).size.width,
                height: D.H / 5.2,
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(D.W / 60.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(D.W / 30.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Accountant",
                                style: GoogleFonts.roboto(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: D.H / 50)),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: D.W / 12,
                                        height: D.W / 12,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(D.W / 50.0),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.grey,
                                          size: D.H / 50,
                                        ),
                                      ),
                                      SizedBox(width: D.H / 80),
                                      Container(
                                        width: D.W / 12,
                                        height: D.W / 12,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(D.W / 50.0),
                                          ),
                                        ),
                                        child: Icon(Icons.delete_rounded,
                                            color: Colors.grey, size: D.H / 50),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text("Casepoint",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: D.H / 55)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("30th Nov,-31st Jan,2022|Afghanistan",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 55)),
                          ],
                        ),
                        Container(
                            child: Text(
                                "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 55))),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: D.H / 50),
              Container(
                width: MediaQuery.of(context).size.width,
                height: D.H / 5.2,
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(D.W / 60.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(D.W / 30.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Accountant",
                                style: GoogleFonts.roboto(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: D.H / 50)),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: D.W / 12,
                                        height: D.W / 12,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(D.W / 50.0),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.grey,
                                          size: D.H / 50,
                                        ),
                                      ),
                                      SizedBox(width: D.H / 80),
                                      Container(
                                        width: D.W / 12,
                                        height: D.W / 12,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(D.W / 50.0),
                                          ),
                                        ),
                                        child: Icon(Icons.delete_rounded,
                                            color: Colors.grey, size: D.H / 50),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text("Casepoint",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: D.H / 55)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("30th Nov,-31st Jan,2022|Afghanistan",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 55)),
                          ],
                        ),
                        Container(
                            child: Text(
                                "cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc",
                                style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 55))),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: D.H / 50),
            ],
          ),
        ),
      ),
    );
  }
}
