import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: ColorConstants.whiteColor,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            "Notification",
            style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: D.H / 40),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      shape: BoxShape.circle),
                  height: D.H / 5,
                  width: D.W / 3,
                  child: Container(
                    height: D.H / 6,
                    width: D.W / 4,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: SvgPicture.asset(
                        "assets/images/nonotiicon.svg",
                        color: ColorConstants.primaryBlueColor,
                      ),
                    ),
                  )) ,
              Text(
                "No notification yet",
                style: GoogleFonts.roboto(color: Colors.grey, fontSize: 24,fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Center(
                      child: Text(
                    "Stay tuned! Notifications about your activity will\n                            show up here",
                    style: GoogleFonts.roboto(color: Colors.black, fontSize: 16),
                  ))
                ]),
              ),
              SizedBox(height: D.H/5,)
            ],
          ),
        ));
  }
}
