import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';
class ExploreDetailScreen extends StatefulWidget {
  const ExploreDetailScreen({Key? key}) : super(key: key);

  @override
  _ExploreDetailScreenState createState() => _ExploreDetailScreenState();
}

class _ExploreDetailScreenState extends State<ExploreDetailScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: D.W / 18.0),
              child: Row(
                children: [
                  Text("Explore",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/30)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: D.W / 10.0,right:D.W / 10.0 ,top:D.W / 30.0 ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: D.H / 4.5,
                decoration: BoxDecoration(
                  color: ColorConstants.chooseusecardcolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(D.W / 30.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://thumbs.dreamstime.com/z/digital-sphere-global-link-technology-logo-concept-design-d-three-dimensional-style-symbol-graphic-template-element-vector-137558925.jpg",
                                    height: D.H/20,
                                    width: D.H/20,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width:D.W/30 ,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Atom Technology",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w600,fontSize: D.H/60)),
                                    SizedBox(height:D.H/80 ,),
                                    Row(
                                      children: [
                                        Icon(Icons.shopping_bag_outlined,size:D.H/40 ,),
                                        Text("Advertising",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/80)),
                                        SizedBox(width:D.W/30),
                                        Icon(Icons.email_outlined,size:D.H/40 ,),
                                        Text("employer@gmail.com",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/80)),
                                      ],
                                    ),
                                    SizedBox(height:D.H/80 ,),
                                    Row(
                                      children: [
                                        Container(
                                          width: D.W/5,
                                            height: D.H/40,
                                            decoration: BoxDecoration(
                                              color: ColorConstants.lightBlueecolor.withOpacity(0.2),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(D.W / 30.0),
                                              ),
                                            ),
                                            child: Center(child: Text("Open Jobs - 2",style: GoogleFonts.roboto(color: ColorConstants.primaryBlueColor,fontWeight: FontWeight.normal,fontSize: D.H/80)))),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:D.H/40 ,),
                        Row(children: [
                          Container(
                            width: D.W/4  ,
                            height: D.H/16  ,
                            child: RaisedButton(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              onPressed: () {

                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.star,size:D.H/50 ,),
                                    Text("Follow",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.normal,fontSize: D.H/60)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:D.W/40 ,),
                          Container(
                            width: D.W/2.5  ,
                            height: D.H/16  ,
                            child: RaisedButton(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              onPressed: () {

                              },
                              color: Color(0xFFF1E5E1),
                              textColor: Colors.white,
                              child: Center(
                                    child: Text("Report to Company",style: GoogleFonts.roboto(color: Colors.red,fontWeight: FontWeight.normal,fontSize: D.H/60)),
                              ),
                            ),
                          ),
                        ],)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height:D.H/50),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: D.W / 18.0),
                  child: Text("About Company",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                ),
              ],
            ),
            SizedBox(height:D.H/50),
            Container(
              width:D.W/1.15,
                child: Text("Lorum Ipsum is simply dummy text of the printing and typesetting industry.Lorem ispam has been the industry's standard.Lorum Ipsum is simply dummy text of the printing and typesetting industry.Lorem ispam has been the industry's standard",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/60))),
            SizedBox(height:D.H/50),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: D.W / 18.0),
                  child: Text("Our Latest Jobs",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/40)),
                ),
              ],
            ),
            SizedBox(height:D.H/40),
            Padding(
              padding: EdgeInsets.only(left: D.W / 10.0,right:D.W / 10.0 ,top:D.W / 30.0 ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: D.H / 6,
                decoration: BoxDecoration(
                  color: ColorConstants.chooseusecardcolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(D.W / 30.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left:D.W / 30.0,top: D.W / 15.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://thumbs.dreamstime.com/z/digital-sphere-global-link-technology-logo-concept-design-d-three-dimensional-style-symbol-graphic-template-element-vector-137558925.jpg",
                                    height: D.H/20,
                                    width: D.H/20,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width:D.W/30 ,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Atom Technology",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w600,fontSize: D.H/60)),
                                    SizedBox(height:D.H/80 ,),
                                    Row(
                                      children: [
                                        Icon(Icons.shopping_bag_outlined,size:D.H/40 ,),
                                        Text("Advertising",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/80)),
                                        SizedBox(width:D.W/30),
                                        Icon(Icons.email_outlined,size:D.H/40 ,),
                                        Text("employer@gmail.com",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/80)),
                                      ],
                                    ),
                                    SizedBox(height:D.H/80 ,),

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:D.H/120 ,),
                        Row(
                          children: [
                            Container(
                                width: D.W/4.5,
                                height: D.H/40,
                                decoration: BoxDecoration(
                                  color: ColorConstants.lightBlueecolor.withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(D.W / 30.0),
                                  ),
                                ),
                                child: Center(child: Text("Computer Skills",style: GoogleFonts.roboto(color: ColorConstants.primaryBlueColor,fontWeight: FontWeight.normal,fontSize: D.H/80)))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: D.W / 10.0,right:D.W / 10.0 ,top:D.W / 30.0 ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: D.H / 6,
                decoration: BoxDecoration(
                  color: ColorConstants.chooseusecardcolor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(D.W / 30.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left:D.W / 30.0,top: D.W / 15.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://thumbs.dreamstime.com/z/digital-sphere-global-link-technology-logo-concept-design-d-three-dimensional-style-symbol-graphic-template-element-vector-137558925.jpg",
                                    height: D.H/20,
                                    width: D.H/20,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width:D.W/30 ,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Atom Technology",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w600,fontSize: D.H/60)),
                                    SizedBox(height:D.H/80 ,),
                                    Row(
                                      children: [
                                        Icon(Icons.shopping_bag_outlined,size:D.H/40 ,),
                                        Text("Advertising",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/80)),
                                        SizedBox(width:D.W/30),
                                        Icon(Icons.email_outlined,size:D.H/40 ,),
                                        Text("employer@gmail.com",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/80)),
                                      ],
                                    ),
                                    SizedBox(height:D.H/80 ,),

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:D.H/120 ,),
                        Row(
                          children: [
                            Container(
                                width: D.W/3.5,
                                height: D.H/40,
                                decoration: BoxDecoration(
                                  color: ColorConstants.lightBlueecolor.withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(D.W / 30.0),
                                  ),
                                ),
                                child: Center(child: Text("Communication skill",style: GoogleFonts.roboto(color: ColorConstants.primaryBlueColor,fontWeight: FontWeight.normal,fontSize: D.H/80)))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: D.W / 10.0,right:D.W / 10.0 ,top:D.W / 15.0 ),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ownership:",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                        Text("NGO",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                      ],
                    ),
                    SizedBox(height:D.H/40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Company size:",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                        Text("51-100",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                      ],
                    ),
                    SizedBox(height:D.H/40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Founded in:",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                        Text("2020",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                      ],
                    ),
                    SizedBox(height:D.H/40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email:",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                        Text("employer@gmail.com",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                      ],
                    ),
                    SizedBox(height:D.H/40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Location:",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                        Text("USA",style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                      ],
                    ),
                    SizedBox(height:D.H/40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Social media:",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                        Row(
                          children: [
                            Icon(Icons.facebook),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:D.H/40),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(D.H/80),
                        ),
                        onPressed: () {

                        },
                        padding: EdgeInsets.all(D.H/60),
                        color:ColorConstants.lightBlueecolor.withOpacity(0.2),
                        textColor: Colors.white,
                        child: Text("google.com", style: GoogleFonts.roboto(color: ColorConstants.primaryBlueColor,fontWeight: FontWeight.normal,fontSize: D.H/40)),
                      ),
                    ),
                    SizedBox(height:D.H/40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

