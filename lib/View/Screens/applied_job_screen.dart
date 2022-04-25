import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Constants/api_endpoint.dart';
import '../../Constants/color_constants.dart';
import '../../Model/API Models/applied_job_model.dart';
import '../../Model/API Models/login_model.dart';
import '../../Utils/common_utils.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';
import '../../Utils/preferences.dart';

class AppliedJobScreen extends StatefulWidget {
  const AppliedJobScreen({Key? key}) : super(key: key);

  @override
  _AppliedJobScreenState createState() => _AppliedJobScreenState();
}

class _AppliedJobScreenState extends State<AppliedJobScreen> {

  // static List<Job> jobData = <Job>[];
  static List<String> jobData = <String>[];

  @override
  void initState() {
    // getAppliedJob();
    getsharedData();
    super.initState();
  }
 Future<void> getsharedData() async {
   jobData.clear();
   SharedPreferences ss=await SharedPreferences.getInstance();
   jobData.addAll(ss.getStringList("appliedJobList")??[]);
   setState(() {

   });

 }
 /* Future<void> getAppliedJob() async {
    LoginModel? loginModel =
        await PreferenceUtils.getLoginObject("LoginResponse");
    final token = loginModel!.token;
    final uri = ApiEndPoint.AppliedJob;
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': "Bearer" + " " + token!
    };
    Map<String, dynamic> body = {
      "status": 1,
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
      jobData.clear();
      print("Sucess");
      AppliedJobModel responsee = AppliedJobModel.fromJson(res);
      responsee.data!.forEach((element) {
        jobData.add(Job(
            jobTitle:element.job!.jobTitle.toString(),
            salaryTo:element.job!.salaryTo!.toInt(),
            salaryFrom:element.job!.salaryFrom!.toInt(),
            createdAt:element.job!.createdAt.toString(),
            status:element.job!.status!.toInt()
        ));
      });
      setState(() {});

      CommonUtils.hideProgressDialog(context);
    } else {
      CommonUtils.hideProgressDialog(context);
      CommonUtils.showRedToastMessage(
          "Something went wrong for getting category");
    }
  }*/

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
                  itemCount: jobData.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: D.H / 70, right: D.H / 70, top: D.H / 55),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                                    Text(jobData[index],
                                        style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: D.H / 55)),
                                    SizedBox(width: D.H / 80),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: D.W / 100.0),
                                      child: Container(
                                          height: D.H / 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue.withOpacity(0.1),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(D.W / 100.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: D.W / 60.0,
                                                right: D.W / 60.0),
                                            child: Center(
                                                child: Text("Applied",
                                                    style: GoogleFonts.roboto(
                                                        color: Colors.blue,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: D.H / 80))),
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
                                    Text("29th March",
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
                                    Text("\$"+"1000",
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
