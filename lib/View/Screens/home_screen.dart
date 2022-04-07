
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Constants/constants.dart';
import 'package:jobber/CustomWidgets/search_bar_widget.dart';
import 'package:jobber/View/Screens/search_screen.dart';

import '../../Utils/dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 30.0),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: CUstomSearchBar(
                        function: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  SearchScreen()),
                          );
                        },
                          controller: controller,
                          readOnly: false,
                          hint: "Search here...",
                          validators: (e) {},
                          keyboardTYPE: TextInputType.name)),
                  SizedBox(width: 8,),
                  Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlueColor,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: D.W/9,
                    height: D.H/19,
                    child: Image.asset("assets/images/filtericon.png"),
                  )
                ],
              ),
            ),
            SizedBox(height: D.H/98,),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  Container(width: D.W,height: D.H/10,child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: Constants.categoryTextList.length,
                    itemBuilder: (ctx,int){
                      return Padding(
                        padding:  EdgeInsets.only(right: D.W/35.0),
                        child: Container(
                          child: Row(children: [Text(Constants.categoryTextList[int].text.toString(),style: GoogleFonts.openSans(color: Constants.categoryTextList[int].color),),SizedBox(width: 3,),Icon(Icons.cancel,color: Color(0xFFFF6C6C).withOpacity(0.5),)],),
                        ),
                      );
                    },
                  ),),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: D.W/27.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Categories",style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/35),),
                        Expanded(child: Container()),
                        Text("See all",style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,fontSize: D.H/55),),
                        SizedBox(width: D.W/15,)
                      ],),
                  ),
                  SizedBox(height: D.H/100,),
                  SizedBox( // Horizontal ListView
                    height: D.H/4.5,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: Constants.categoryModelData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF0062FF).withOpacity(0.1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  topLeft: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0)),
                            ),
                            width:  D.W/2.5,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: EdgeInsets.all(18),
                                    decoration: BoxDecoration(
                                        color: Constants.categoryModelData[index].color,
                                        shape: BoxShape.circle
                                    ),
                                    child: SvgPicture.asset(Constants.categoryModelData[index].icon.toString(),color: Colors.white,height: 45,width: 45,)),
                                SizedBox(height: 8,),
                                Text(Constants.categoryModelData[index].text1.toString(),style: GoogleFonts.openSans(color: Constants.categoryModelData[index].color,fontWeight: FontWeight.w600),),
                                Text(Constants.categoryModelData[index].text2.toString(),style: GoogleFonts.openSans(color:Color(0xFF4F4F4F),fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: D.W/27.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Popular job",style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/35),),
                        Expanded(child: Container()),
                        Text("Show All",style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,fontSize: D.H/55),),
                        SizedBox(width: D.W/15,)
                      ],),
                  ),
                  SizedBox(height: D.H/100,),
                  SizedBox( // Horizontal ListView
                    height: D.H/4.5,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: Constants.popularjobs.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: 15,right: 15,top: 15),
                                        child: Container(
                                          height: D.H/18,
                                          width: D.W/ 9,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFE9F4FF),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(8))),
                                          child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: SvgPicture.asset(
                                                    Constants.popularjobs[index].icon.toString()),
                                              )),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Icon(Icons.favorite,color: Colors.red,),
                                      SizedBox(width: 16,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: 15,top: 4),
                                        child: Text( Constants.popularjobs[index].text3.toString(),style: GoogleFonts.openSans(color:  Colors.grey,fontSize:12,fontWeight: FontWeight.w600),),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 12,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: 15),
                                        child: Text( Constants.popularjobs[index].text1.toString(),style: GoogleFonts.openSans(color:  Colors.black,fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: 15),
                                        child: Text( Constants.popularjobs[index].text2.toString(),style: GoogleFonts.openSans(fontSize:12,color:  Colors.black,fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(left: 8),
                                        child: Text('Toronto, Canada',style: GoogleFonts.openSans(fontSize:12,color:  Colors.grey,fontWeight: FontWeight.w600),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: D.W/27.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Recent Post",style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/35),),
                        Expanded(child: Container()),
                        Text("See all",style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.w600,fontSize: D.H/55),),
                        SizedBox(width: D.W/15,)
                      ],),
                  ),
                  SizedBox(height: D.H/100,),
                  Container(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:  Constants.popularjobs.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: D.W,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 14.0),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 15,right: 15,),
                                          child: Container(
                                            height: D.H/18,
                                            width: D.W/ 9,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFE9F4FF),
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(8))),
                                            child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(6.0),
                                                  child: SvgPicture.asset(
                                                      Constants.popularjobs[index].icon.toString()),
                                                )),
                                          ),
                                        ),

                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text( Constants.popularjobs[index].text1.toString(),style: GoogleFonts.openSans(fontSize:18,color:  Colors.black,fontWeight: FontWeight.bold),),
                                        Text('Full Time',style: GoogleFonts.openSans(fontSize:13,color:  Colors.grey,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    Text( Constants.popularjobs[index].text2.toString(),style: GoogleFonts.openSans(fontSize:14,color:  Colors.grey,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 8,),


                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
