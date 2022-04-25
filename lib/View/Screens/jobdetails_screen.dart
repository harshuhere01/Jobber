import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Utils/dimensions.dart';
import 'job_applied_screen.dart';

class JobDetailsScreen extends StatefulWidget {
  String iconpath;
  String titlename;

  JobDetailsScreen({required this.iconpath, required this.titlename});

  @override
  _JobDetailsScreenState createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
  int selectedTab = 0;
  static List<String> applyList = <String>[];
  static List<String> tempapplyList = <String>[];
  var show1 = "APPLY NOW";

  @override
  void initState() {
    getdata();
    super.initState();
  }

  Future<void> getdata() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    tempapplyList = ss.getStringList("appliedJobList") ?? [];
    if (tempapplyList.contains(widget.titlename)) {
      show1 = "APPLIED";
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstants.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: ColorConstants.blackColor,
          ),
          Container(
            width: 40,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(D.H / 40.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        widget.iconpath,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              SizedBox(
                height: D.H / 50,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        widget.titlename.toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Toptal",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Posted on 20 July",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "21h 45m left",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xFF4CA6A8),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: D.H / 50,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Apply Before",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: D.W / 4.5,
                      ),
                      Text(
                        "Job Nature",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "30 July, 2021",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: D.W / 4,
                      ),
                      Text(
                        "Contractual",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: D.H / 30,
                  ),

                  Row(
                    children: [
                      Text(
                        "Salary Range",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: D.W / 5,
                      ),
                      Text(
                        "Job Location",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "\$100k - \$120k/yearly",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: D.W / 10,
                      ),
                      Text(
                        "Work from anywhere",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: D.H / 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlueColor,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    width: D.W,
                    height: D.H / 15,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              selectedTab = 0;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                decoration: selectedTab == 0
                                    ? BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)))
                                    : null,
                                child: Center(
                                    child: Text(
                                  "Description",
                                  style:
                                      GoogleFonts.poppins(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              selectedTab = 1;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: selectedTab == 1
                                    ? BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)))
                                    : null,
                                child: Center(
                                    child: Text(
                                  "Overview",
                                  style:
                                      GoogleFonts.poppins(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              selectedTab = 2;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: selectedTab == 2
                                    ? BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)))
                                    : null,
                                child: Center(
                                    child: Text(
                                  "Reviews",
                                  style:
                                      GoogleFonts.poppins(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: D.H / 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Job Description",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: D.H / 30,
                  ),
                  ExpandableText(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea',
                    expandText: 'show more',
                    collapseText: 'show less',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),
                  // Row(
                  //   children: [
                  //     Text( "See more",style: GoogleFonts.poppins(fontSize:14,color:  Colors.blue,fontWeight: FontWeight.bold),),
                  //     Icon(Icons.arrow_drop_down_outlined ,color: Colors.blue,)
                  //   ],
                  // ),
                  SizedBox(
                    height: D.H / 40,
                  ),

                  Row(
                    children: [
                      Text(
                        "Roles AND RESPONSIBILITIES",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  ExpandableText(
                    '- Someone who has ample work experience with synthesizing primary research, developing insight-driven product strategy, and extending that strategy into artefacts in a creative, systematic and logical fashion -Adapt and meticulous with creating user ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    maxLines: 4,
                    linkColor: Colors.blue,
                  ),
                  SizedBox(
                    height: 200,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.H / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            show1 == "APPLY NOW"
                ? WelcomePageRoundedButton(
                    bordercolor: ColorConstants.primaryBlueColor,
                    textcolor: ColorConstants.whiteColor,
                    color: ColorConstants.primaryBlueColor,
                    text: 'APPLY NOW',
                    fontsize: 18,
                    height: D.H / 15,
                    width: D.W,
                    btnradius: D.H / 50,
                    fontweight: FontWeight.w500,
                    onTap: () async {
                      SharedPreferences ss =
                          await SharedPreferences.getInstance();
                      applyList = ss.getStringList("appliedJobList") ?? [];
                      applyList.add(widget.titlename.toString());
                      ss.setStringList("appliedJobList", applyList);
                      NavigationHelpers.redirect(context, JobAppliedScreen());
                    },
                  )
                : WelcomePageRoundedButton(
                    bordercolor: Color(0xFF238841),
                    textcolor: ColorConstants.whiteColor,
                    color: Color(0xFF238841),
                    text: 'APPLIED',
                    fontsize: 18,
                    height: D.H / 15,
                    width: D.W,
                    btnradius: D.H / 50,
                    fontweight: FontWeight.w500,
                    onTap: () {},
                  ),
            SizedBox(
              height: D.H / 50,
            ),
          ],
        ),
      ),
    );
  }
}
