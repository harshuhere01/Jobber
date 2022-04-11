import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';

class AppliedJobScreen extends StatefulWidget {
  const AppliedJobScreen({Key? key}) : super(key: key);

  @override
  _AppliedJobScreenState createState() => _AppliedJobScreenState();
}

class _AppliedJobScreenState extends State<AppliedJobScreen> {
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
                        "Applied Job",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: D.H / 50,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: D.H / 60),
              ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:  EdgeInsets.only(left:D.H /70,right:D.H /70,top:D.H /55),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: D.H / 6.5,
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                  size: D.H / 40,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.shop,
                                  color: Colors.grey,
                                  size: D.H / 40,
                                ),
                                SizedBox(width: D.H / 80),
                                Text("php developer",
                                    style: GoogleFonts.roboto(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: D.H / 55)),
                                SizedBox(width: D.H / 80),
                                Padding(
                                  padding:  EdgeInsets.only(top: D.W / 100.0),
                                  child: Container(
                                      height: D.H/50,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(D.W / 100.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: D.W / 60.0,right:D.W / 60.0 ),
                                        child: Center(child: Text("Applied",style: GoogleFonts.roboto(color: Colors.blue,fontWeight: FontWeight.normal,fontSize: D.H/80))),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: D.H / 100),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_outlined,
                                  color: Colors.grey,
                                  size: D.H / 40,
                                ),
                                SizedBox(width: D.H / 80),
                                Text("Applied On:",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: D.H / 55)),
                                Text("29th Mar,2022",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: D.H / 55)),
                              ],
                            ),
                            SizedBox(height: D.H / 100),
                            Row(
                              children: [
                                Icon(
                                  Icons.credit_card,
                                  color: Colors.grey,
                                  size: D.H / 40,
                                ),
                                SizedBox(width: D.H / 80),
                                Text("1,212\$",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: D.H / 55)),
                                SizedBox(width: D.H / 80),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
              SizedBox(height: D.H / 25),
            ],
          ),
        ),
      ),
    );
  }
}
