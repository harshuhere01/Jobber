import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Utils/navigation_helper.dart';

import '../../Utils/dimensions.dart';
import 'change_password_screen.dart';
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

              Container(
                height:D.H/4,width:D.W,decoration: BoxDecoration(
                  color:Colors.grey.withOpacity(0.5),
                  borderRadius:
                  BorderRadius.all(Radius.circular(25))),
              child: Column(children: [
                SizedBox(height: D.H/80,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: D.H / 12,
                        width: D.W / 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1921&q=80",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Name",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),),
                     SizedBox(height: 8,),
                      Text("Email Id",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)


                    ],),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Edit Profile",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
                          ],),
                        ),),
                    ),
                  ],
                ),
                SizedBox(height:D.H/20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all( 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(children: [
                              Text("Profile Views",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
                            ],),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all( 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(children: [
                              Text("Followings",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
                            ],),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all( 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(children: [
                              Text("Resume",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
                            ],),
                          ),),
                      ),
                    ],
                  ),
                ),
              ],),),
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
              Container(
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
              SizedBox(height: 8,),
              Container(
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
              InkWell(
                onTap: (){
                  NavigationHelpers.redirect(context, ChangePasswordScreen());
                },
                child: Container(
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
              ),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}
