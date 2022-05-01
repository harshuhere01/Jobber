import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/View/Screens/applied_job_screen.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/digital_cv_page.dart';
import 'package:jobber/View/Screens/favourite_jobs_page.dart';
import 'package:jobber/View/Screens/following_screen.dart';
import 'package:jobber/View/Screens/idea_comment.dart';
import 'package:jobber/View/Screens/write_a_blog_screen.dart';
import 'package:jobber/View/Screens/write_a_idea.dart';
import 'package:jobber/View/Screens/jobs_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Model/API Models/login_model.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/preferences.dart';
import 'all_blog_screen.dart';
import 'all_idea_screen.dart';
import 'blog_comment.dart';
import 'change_password_screen.dart';
import '../../Utils/navigation_helper.dart';
import 'employe_job_stages_screen.dart';
import 'employee_follower_screen.dart';
import 'employer_my_details_screen.dart';
import 'myExperience_screen.dart';
import 'myResume_screen.dart';
import 'my_details_screen.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String roleType="Candidate";
  String userName="Adom Shafi";
  String UserEmail="hellobesnik@gmail.com";
  late LoginModel loginModel;
  @override
  void initState() {
  getDataFromSharedPref();
  getprefrences();
    super.initState();
  }
  Future<void> getDataFromSharedPref() async {
    SharedPreferences pp=await SharedPreferences.getInstance();
    var nn=pp.get("UserType");
    if(nn=="0"){
      roleType="Candidate";
    }else if(nn=="1"){
      roleType="Employer";
    }else if(nn=="2"){
      roleType="Blogger";
    }else if(nn=="3"){
      roleType="Businessman";
    }
    setState(() {

    });
  }
  getprefrences() async {
    loginModel = (await PreferenceUtils.getLoginObject('LoginResponse'))!;

    if(loginModel!=null){
      userName=loginModel.user!.firstName??"Adom Shafi";
      UserEmail=loginModel.user!.email??"hellobesnik@gmail.com";
    }else{

    }
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: roleType=="Candidate"?Column(
            children: [
              Container(
                height:D.H/4,width:D.W,decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  ColorConstants.primaryBlueColor.withOpacity(0.4),
                  Color(0xFF2193b0)
                ],
              ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(25))),
              child: Column(children: [
                SizedBox(height: D.H/80,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(100))),
                        height: D.H / 12,
                        width: D.W / 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/drawerlogo.png"),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("$userName",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),),
                     SizedBox(height: 8,),
                      Text("$UserEmail",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),)


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
                            Text("$roleType",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
              GestureDetector(
                child: Container(
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
                onTap: (){
                  {NavigationHelpers.redirect(context, MyExperienceScreen());}
                },
              ),
              SizedBox(height: 8,),
              GestureDetector(
                child: Container(
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
                onTap: (){
                  {NavigationHelpers.redirect(context, AppliedJobScreen());}
                },
              ),
              SizedBox(height: 8,),
              GestureDetector(
                child: Container(
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
                onTap: (){
                  {NavigationHelpers.redirect(context, MyResumeScreen());}
                },
              ),
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
              InkWell(
                onTap: (){NavigationHelpers.redirect(context, FollowingScreen());},
                child: Container(
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
              ),
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
          ): roleType=="Employer"?
          Column(
            children: [
              Container(
                height:D.H/3.5,width:D.W,decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      ColorConstants.primaryBlueColor.withOpacity(0.4),
                      Color(0xFF2193b0)
                    ],
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(25))),
                child: Column(children: [
                  SizedBox(height: D.H/80,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(100))),
                          height: D.H / 12,
                          width: D.W / 6,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/drawerlogo.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("$userName",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),),
                          SizedBox(height: 8,),
                          Text("$UserEmail",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),)


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
                              Text("$roleType",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Total Jobs    ",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Live Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Paused Job",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
                              ],),
                            ),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:D.H/90),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Closed Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Followers",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Application",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                  NavigationHelpers.redirect(context, EmployerMyDetailScreen());
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
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
                onTap: (){
                  {NavigationHelpers.redirect(context, JobsScreen());}
                },
              ),
              SizedBox(height: 8,),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Job Stages",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
                onTap: (){
                  {NavigationHelpers.redirect(context, EmployeJobStages());}
                },
              ),
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
                      Text("Manage SubScription",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
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
                      Text("Transaction",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
              ),
              SizedBox(height: 8,),
              InkWell(
                onTap: (){NavigationHelpers.redirect(context, EmployeFollower());},
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Followers",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
              ),
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
          ):roleType=="Blogger"?
          Column(
            children: [
              Container(
            height:D.H/3.5,width:D.W,decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  ColorConstants.primaryBlueColor.withOpacity(0.4),
                  Color(0xFF2193b0)
                ],
              ),
              borderRadius:
              BorderRadius.all(Radius.circular(25))),
            child: Column(children: [
              SizedBox(height: D.H/80,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(100))),
                      height: D.H / 12,
                      width: D.W / 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/drawerlogo.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$userName",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),),
                      SizedBox(height: 8,),
                      Text("$UserEmail",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),)


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
                          Text("$roleType",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Total Jobs    ",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Live Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Paused Job",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
                          ],),
                        ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height:D.H/90),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Closed Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Followers",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text("Application",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                NavigationHelpers.redirect(context, EmployerMyDetailScreen());
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
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("Write A Blog",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              onTap: (){
                {NavigationHelpers.redirect(context, WriteBlog());}
              },
            ),
            SizedBox(height: 8,),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("All Blog",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              onTap: (){
                {NavigationHelpers.redirect(context, AllBlog());}
              },
            ),
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
              onTap: (){NavigationHelpers.redirect(context, EmployeFollower());},
              child: Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("Followers",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
            ),
            SizedBox(height: 8,),
            InkWell(
              onTap: (){NavigationHelpers.redirect(context, BlogComment());},
              child: Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("Comments",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
            ),
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
            SizedBox(height: 8,),],):roleType=="Businessman"?Column(
            children: [
              Container(
                height:D.H/3.5,width:D.W,decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      ColorConstants.primaryBlueColor.withOpacity(0.4),
                      Color(0xFF2193b0)
                    ],
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(25))),
                child: Column(children: [
                  SizedBox(height: D.H/80,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(100))),
                          height: D.H / 12,
                          width: D.W / 6,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/drawerlogo.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("$userName",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),),
                          SizedBox(height: 8,),
                          Text("$UserEmail",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/55,fontWeight: FontWeight.w500),)


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
                              Text("$roleType",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Total Jobs    ",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Live Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Paused Job",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
                              ],),
                            ),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:D.H/90),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Closed Jobs",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Followers",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Application",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/60,fontWeight: FontWeight.w500),),
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
                  NavigationHelpers.redirect(context, EmployerMyDetailScreen());
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
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Write A Idea",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
                onTap: (){
                  {NavigationHelpers.redirect(context, WriteIdea());}
                },
              ),
              SizedBox(height: 8,),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("All Idea",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
                onTap: (){
                  {NavigationHelpers.redirect(context, AllIdea());}
                },
              ),
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
                onTap: (){NavigationHelpers.redirect(context, EmployeFollower());},
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Followers",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
              ),
              SizedBox(height: 8,),
              InkWell(
                onTap: (){NavigationHelpers.redirect(context, IdeaComment());},
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFEEEEEE),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(children: [
                      Text("Comments",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                    ],),
                  ),),
              ),
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
              SizedBox(height: 8,),],):Container()
        ),
      ),
    );
  }
}
