import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/digital_cv_page.dart';
import 'package:jobber/View/Screens/favourite_jobs_page.dart';

import '../../Utils/dimensions.dart';
import 'my_details_screen.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(height: 200,color: Colors.red,),
              SizedBox(height: D.H/80,),
              InkWell(
                onTap: (){
                  NavigationHelpers.redirect(context, MyDEtailScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                    Text("My Details",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                ],),
                  ),),
              ),
              SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("My Experiance",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("Applied Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("My Resume",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              SizedBox(height: 8,),
              InkWell(
                onTap: (){
                  NavigationHelpers.redirect(context, DigitalCV());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Digital CV",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
              ),
              SizedBox(height: 8,),
              InkWell(
                onTap: (){NavigationHelpers.redirect(context, FavouriteJobs());},
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Favourite Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
              ),
              SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("Followings",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("Change Password",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}
