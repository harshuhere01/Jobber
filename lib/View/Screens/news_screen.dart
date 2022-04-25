import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';
class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: D.H / 15.0,right:D.W /100.0 ),
        child: Container(
          height: D.W / 12.0,
          width: D.W / 12.0,
          child: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            elevation: 0,
            backgroundColor: ColorConstants.lightBluecolor,
            child:  Icon(Icons.keyboard_arrow_up,color: ColorConstants.primaryBlueColor,),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 12.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left:D.W / 30.0),
                  child: Text("Title",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/35)),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top:D.H / 40.0,bottom:D.H / 40.0 ),
              child: Container(child: Image.asset("assets/images/employee_motivation.jpeg"),),
            ),
            Row(
              children: [
                Text("No data available",style: GoogleFonts.roboto(color:Colors.grey[500],fontWeight: FontWeight.normal,fontSize: D.H/55)),
              ],
            ),
            Container(
              height: 350,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.only(top:D.H / 150.0),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width-D.W/6.0,
                        child: Text("We often hear the term motivation.We all are human and that's why we all have emotions and motivation is the driving force behind our behavior.Let's discuss this in detail We often hear the term motivation.We all are human and that's why we all have emotions and motivation is the driving force behind our behavior.Let's discuss this in detail We often hear the term motivation.We all are human and that's why we all have emotions and motivation is the driving force behind our behavior.Let's discuss this in detail We often hear the term motivation.We all are human and that's why we all have emotions and motivation is the driving force behind our behavior.Let's discuss this in detail We often hear the term motivation.We all are human and that's why we all have emotions and motivation is the driving force behind our behavior.Let's discuss this in detail We often hear the term motivation.We all are human and that's why we all have emotions and motivation is the driving force behind our behavior.Let's discuss this in detail",
                            style: GoogleFonts.roboto(color:ColorConstants.tabbtncolor,fontWeight: FontWeight.normal,fontSize: D.H/60,height: 2)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
