import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class EmployeFollower extends StatefulWidget {
  const EmployeFollower({Key? key}) : super(key: key);

  @override
  State<EmployeFollower> createState() => _EmployeFollowerState();
}

class _EmployeFollowerState extends State<EmployeFollower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: EdgeInsets.symmetric(horizontal: D.H / 50, vertical: D.H / 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Follower",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: D.H / 50,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: D.H / 30,
            ),
            Row(
              children: [
                Text(
                  "NAME",
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W / 2.25,
                ),
                Text(
                  'PHONE',
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: D.W /6.5,
                ),
                Text(
                  'EMAIL',
                  style: GoogleFonts.roboto(
                      color: ColorConstants.greycolor,
                      fontSize: D.H / 80,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(
              'https://images.unsplash.com/photo-1615893208238-ead83e5a2b3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
              'Tejas patel',
              'N/A',
              'employer@gmail.com',
            ),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(
              'https://images.unsplash.com/photo-1615893208238-ead83e5a2b3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
              'Rahul solanki',
              'N/A',
              'employer@gmail.com',
            ),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(
              'https://images.unsplash.com/photo-1540174401473-df5f1c06c716?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
              'Raj arora',
              'N/A',
              'ali@gmail.com',
            ),
            SizedBox(
              height: D.H / 50,
            ),
            DottedLine(
                direction: Axis.horizontal,
                dashColor: ColorConstants.greycolor),
            SizedBox(
              height: D.H / 50,
            ),
            _buildRow(
              'https://images.unsplash.com/photo-1615893208238-ead83e5a2b3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
              'Mahesh Roy',
              'N/A',
              'employer@gmail.com',
            ),
            SizedBox(
                width: D.W / 2,
                child: Divider(
                  color: ColorConstants.greycolor,
                  thickness: 2,
                )),
            SizedBox(
              height: D.H / 50,
            ),
            _buildLastRow(),
            SizedBox(
              height: D.H / 50,
            ),
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
    );
  }

  Row _buildLastRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Show ',
          style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
        Container(
          width: D.W/8,
          padding: EdgeInsets.symmetric(horizontal: D.H/200,vertical: D.H/150),
          decoration: BoxDecoration(
            color: ColorConstants.greycolor.withOpacity(0.1),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '10',
                style: GoogleFonts.roboto(
                    color: ColorConstants.blackColor,
                    fontSize: D.H / 70,
                    fontWeight: FontWeight.w400),
              ),
              Icon(Icons.arrow_drop_down,color: ColorConstants.blackColor,size: D.H/70,),
            ],
          ),
        ),
        Text(
          ' entries ',
          style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(width: D.H/50,),
        Text(
          'Showing 1 to 4 of 4 entries',
          style: GoogleFonts.roboto(
              color: ColorConstants.blackColor,
              fontSize: D.H / 70,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Row _buildRow(
       String imageURL,String maintext1, String maintext2, String subtext) {
    return Row(
      children: [
        Expanded(
          flex :2,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  imageURL,
                  height: D.H / 20,
                  width: D.H / 20,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: D.W / 60,
              ),
              Text(
                maintext1,
                style: GoogleFonts.roboto(
                    color: Colors.blue,
                    fontSize: D.H / 50,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Expanded(
          child: Text(
            maintext2,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                color: Colors.blue,
                fontSize: D.H / 80,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: Text(
            subtext,
            style: GoogleFonts.roboto(
                color: ColorConstants.greycolor,
                fontSize: D.H / 80,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
