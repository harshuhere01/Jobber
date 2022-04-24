import 'dart:convert';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import '../../Constants/api_endpoint.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Model/API Models/get_job_detail_model.dart';
import '../../Model/API Models/login_model.dart';
import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/preferences.dart';
import 'job_applied_screen.dart';
class JobDetailsScreen extends StatefulWidget {
  String iconpath;
  String jobId;
   JobDetailsScreen({required this.iconpath,required this.jobId});

  @override
  _JobDetailsScreenState createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
  int selectedTab=0;
  bool isLoading=true;
  late GetJobDetailModel getJobDetailModel;
  @override
  void initState() {
    CommonUtils.checkNetwork().then((value) => getJobDetailAPi());
    super.initState();
  }
  Future<void> getJobDetailAPi() async {
    LoginModel? loginModel =
    await PreferenceUtils.getLoginObject("LoginResponse");
    final token = loginModel!.token;
    final uri = Uri.parse("https://hindustanbrassindustries.com/api/job/"+widget.jobId);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': "Bearer" + " " + token!
    };
    Response response = await get(
      uri,
      headers: headers,
    );
    int statusCode = response.statusCode;
    String responseBody = response.body;
    var res = jsonDecode(responseBody);
    if (statusCode == 200 && res["success"]) {
       getJobDetailModel =
      GetJobDetailModel.fromJson(res);
      isLoading=false;
      setState(() {});

      CommonUtils.hideProgressDialog(context);
    } else {
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showRedToastMessage(res["message"]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstants.whiteColor,
        leading: IconButton(onPressed:(){Navigator.pop(context);},icon: Icon(Icons.arrow_back),color: Colors.black,),
        actions: [
          Icon(Icons.favorite_border,color: ColorConstants.blackColor,),
          Container(width: 40,)
        ],
      ),
      body:isLoading?Center(child: CircularProgressIndicator(),): Padding(
        padding:  EdgeInsets.all(D.H/40.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Row(
              children: [
                Container(

                    child: Image.network(widget.iconpath,fit: BoxFit.contain,height: 70,width: 70,)),
              ],
            ),
            SizedBox(height: D.H/50,),
            Column(
              children: [
              Row(
                children: [
                  Text( getJobDetailModel.data!.jobTitle.toString(),style: GoogleFonts.poppins(fontSize:25,color:  Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Text( "Toptal static",style: GoogleFonts.poppins(fontSize:14,color:  Colors.grey,fontWeight: FontWeight.w400),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text( "Posted on 20 July static",style: GoogleFonts.poppins(fontSize:14,color:  Colors.grey,fontWeight: FontWeight.w400),),
                  Text( "21h 45m left static",style: GoogleFonts.poppins(fontSize:14,color:Color(0xFF4CA6A8),fontWeight: FontWeight.w400),),
                ],
              ),


            ],),
            SizedBox(height: D.H/50,),
            Column(
              children: [
              Row(
                children: [
                  Text( "Apply Before",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(width: D.W/4.5,),
                  Text( "Job Nature",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Text( "30 July, 2021 static",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.normal),),
                  SizedBox(width: D.W/4,),
                  Text( "Contractual",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.normal),),
                ],
              ),
                SizedBox(height: D.H/30,),

              Row(

                children: [
                  Text( "Salary Range",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(width: D.W/5,),
                  Text( "Job Location",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Text( "\$${getJobDetailModel.data!.salaryFrom.toString()}k - \$${getJobDetailModel.data!.salaryTo.toString()}k/yearly",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.normal),),
                  SizedBox(width: D.W/10,),
                  Text( "Work from anywhere",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.normal),),
                ],
              ),
              SizedBox(height: D.H/30,),
              Container(
                decoration: BoxDecoration(
                    color: ColorConstants.primaryBlueColor,
                    borderRadius:
                    BorderRadius.all(Radius.circular(25))),
                width: D.W,height: D.H/15,
              child: Row(
                children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      selectedTab=0;
                      setState(() {

                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(decoration: selectedTab==0?BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                          BorderRadius.all(Radius.circular(25))):null,child: Center(child: Text("Description",style: GoogleFonts.poppins(color: Colors.white),)),),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      selectedTab=1;
                      setState(() {

                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(decoration: selectedTab==1?BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                          BorderRadius.all(Radius.circular(25))):null,
                        child: Center(child: Text("Overview",style: GoogleFonts.poppins(color: Colors.white),)),
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      selectedTab=2;
                      setState(() {

                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(decoration:selectedTab==2? BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                          BorderRadius.all(Radius.circular(25))):null,
                        child: Center(child: Text("Reviews",style: GoogleFonts.poppins(color: Colors.white),)),
                      ),

                    ),
                  ),
                ),

              ],),),
                SizedBox(height: D.H/30,),
                Row(
                children: [
                  Text( "Job Description",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.bold),),
                  ],
              ),
                SizedBox(height: D.H/30,),
                ExpandableText(
                  getJobDetailModel.data!.description.toString(),
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
                SizedBox(height: D.H/40,),

                Row(
                children: [
                  Text( "Roles AND RESPONSIBILITIES",style: GoogleFonts.poppins(fontSize:14,color:  Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
                SizedBox(height: 10.0),
                ExpandableText(
                  'description static',
                  expandText: 'show more',
                  collapseText: 'show less',
                  maxLines: 4,
                  linkColor: Colors.blue,
                ),
                SizedBox(height: 200,)
            ],)
           ],),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding:  EdgeInsets.symmetric(horizontal: D.H/10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            WelcomePageRoundedButton(
              bordercolor: ColorConstants.primaryBlueColor,
              textcolor: ColorConstants.whiteColor,
              color: ColorConstants.primaryBlueColor,
              text: 'APPLY NOW',
              fontsize: 18,
              height: D.H / 15,
              width: D.W,
              btnradius: D.H/50,
              fontweight: FontWeight.w500,
              onTap: () {
                applyJobApi(getJobDetailModel.data!.id.toString(),"100", "1000", "test notes", "apply");
              },
            ),
            SizedBox(height: D.H/50,),
            WelcomePageRoundedButton(
              bordercolor: Color(0xFF238841),
              textcolor: ColorConstants.whiteColor,
              color: Color(0xFF238841),
              text: 'APPLIED',
              fontsize: 18,
              height: D.H / 15,
              width: D.W,
              btnradius: D.H/50,
              fontweight: FontWeight.w500,
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
  Future<void> applyJobApi(
      String job_id,
      String resume_id,
      String expected_salary,
      String notes,
      String application_type,
      ) async {
    CommonUtils.showProgressDialog(context);
    LoginModel? loginModel =
    await PreferenceUtils.getLoginObject("LoginResponse");
    final token = loginModel!.token;
    final uri = ApiEndPoint.applyJob;
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': "Bearer" + " " + token!
    };
    Map<String, dynamic> body = {
      "job_id": job_id,
      "resume_id": resume_id,
      "expected_salary": expected_salary,
      "notes": notes,
      "application_type": "application_type",
    };
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );
    int statusCode = response.statusCode;
    String responseBody = response.body;
    var res = jsonDecode(responseBody);
    if (statusCode == 200 && res["success"]) {
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showGreenToastMessage(res["message"]);
      NavigationHelpers.redirect(context, JobAppliedScreen());

    } else {
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showRedToastMessage(res["message"]);
    }
  }
}
