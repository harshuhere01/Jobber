import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/View/Screens/search_screen.dart';

import '../../Constants/color_constants.dart';
import '../../Constants/constants.dart';
import '../../CustomWidgets/search_bar_widget.dart';
import '../../CustomWidgets/welcome_page_rounded_button.dart';
import '../../Model/model.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  _JobScreenState createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  TextEditingController controller = TextEditingController();
  List<SearchJobListData> templist=[];
  List<SearchJobListData> searchJobList = <SearchJobListData>[
    SearchJobListData(icon: "assets/images/searchiconone.png",isLiked: false ,text1: "Mid level UX Designer",text2: 'Contractual',text3: "Total"),
    SearchJobListData(icon: "assets/images/searchicontwo.png",isLiked: true ,text1: "Design Lead",text2: 'Full time',text3: "GitLab"),
    SearchJobListData(icon: "assets/images/searchiconthree.png",isLiked: true ,text1: "UX Researcher ",text2: 'Half time',text3: "Paypal"),
    SearchJobListData(icon: "assets/images/searchiconfour.png",isLiked: true ,text1: "Product Design",text2: 'Contractual',text3: "Uber"),
    SearchJobListData(icon: "assets/images/searchiconone.png",isLiked: true ,text1: "Design Lead",text2: 'Full time',text3: "Total"),
    SearchJobListData(icon: "assets/images/searchicontwo.png",isLiked: true ,text1: "UX Researcher",text2: 'Half time',text3: "GitLab"),

  ];
  bool isfirstTabSelected=true;
  bool isSecondTabSelected=false;
  String selcetedFilter="Full Time";
  @override
  void initState() {
    templist.addAll(searchJobList);
    super.initState();
  }
  changeList(){
    print(controller.text);
    if(controller.text.isNotEmpty){
      templist.clear();
      for(int i=0; i<searchJobList.length;i++) {
        if( searchJobList[i].text1!.toLowerCase().startsWith(controller.text)){
          templist.add(searchJobList[i]);

        }
      };
      print(templist);
      setState(() {

      });
    }else{
      templist.clear();
      templist.addAll(searchJobList);
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 30.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: CUstomSearchBar(
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchScreen()),
                              );
                            },
                            controller: controller,
                            readOnly: false,
                            hint: "Search here...",
                            validators: (e) {},
                            keyboardTYPE: TextInputType.name)),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlueColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      width: D.W / 9,
                      height: D.H / 19,
                      child: InkWell(
                          onTap: () {
                            showFilterBottomSheet();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset(
                              "assets/images/filtericon.svg",
                              color: ColorConstants.whiteColor,
                            ),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("35 Job Opportunity",style: GoogleFonts.openSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/45),),
                        Text("All Relevance",style: GoogleFonts.poppins(color: Color(0xFF4CA6A8),fontWeight: FontWeight.w600,fontSize: D.H/65),),
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: InkWell(
                          onTap: (){
                            isfirstTabSelected=true;
                            isSecondTabSelected=false;
                            setState(() {

                            });
                          },
                          child: Container( decoration: BoxDecoration(
                              color: isfirstTabSelected?ColorConstants.primaryBlueColor:ColorConstants.whiteColor,
                              borderRadius: BorderRadius.all(Radius.circular(12))),height:50,child: Center(child: Text("Most Relevent",style: GoogleFonts.roboto(color: isfirstTabSelected?Colors.white:ColorConstants.blackColor,fontWeight: FontWeight.bold,fontSize: D.H/55),))),
                        )),
                        SizedBox(width: 25,),
                        Expanded(child: InkWell(
                          onTap: (){
                            isfirstTabSelected=false;
                            isSecondTabSelected=true;
                            setState(() {

                            });
                          },
                          child: Container( decoration: BoxDecoration(
                              color:isSecondTabSelected?ColorConstants.primaryBlueColor:ColorConstants.whiteColor,
                              borderRadius: BorderRadius.all(Radius.circular(12))),height:50,child: Center(child: Text("Most Recent",style: GoogleFonts.roboto(color: isSecondTabSelected?Colors.white:ColorConstants.blackColor,fontWeight: FontWeight.w600,fontSize: D.H/55),))),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: D.W/60,),
              Container(
                height: D.H/1,
                child: ListView.builder(
                  itemCount:  templist.length,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: D.W,
                      height: D.H/6,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: 15,right: 15,),
                                        child: Container(
                                          height: D.H/18,
                                          width: D.W/ 9,

                                          child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Image.asset(
                                                    templist[index].icon.toString()),
                                              )),
                                        ),
                                      ),

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text( templist[index].text1.toString(),style: GoogleFonts.openSans(fontSize:18,color:  Colors.black,fontWeight: FontWeight.bold),),
                                      Text(templist[index].text3.toString(),style: GoogleFonts.openSans(fontSize:13,color:  Colors.grey,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  SvgPicture.asset("assets/images/appliedimage.svg"),
                                  SizedBox(width: 8,),
                                ],
                              ),
                              SizedBox(height: D.H/80,),
                              Padding(
                                padding:  EdgeInsets.only(left: 15,right: 15,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color:Colors.grey.withOpacity(0.1),
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(25))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(templist[index].text2.toString(),style: GoogleFonts.poppins(color: Colors.black,fontSize: 12),),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color:Colors.grey.withOpacity(0.1),
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(25))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("\$100k - \$120k/yearly",style: GoogleFonts.poppins(fontSize: 12),),
                                      ),),
                                  ],),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  showFilterBottomSheet() {

    showModalBottomSheet<void>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        backgroundColor: Colors.white,
        context: context,
        isDismissible: false,
        enableDrag: true,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter state) {
                return Container(
                  padding: EdgeInsets.only(
                      bottom: D.H / 50, left: D.W / 30, right: D.W / 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Center(
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              height: 4,
                              color: Colors.grey,
                            )),
                      ),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Set Filters',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 40,
                                color: ColorConstants.blackColor,
                              ),
                            )),
                      ),
                      Row(
                        children: [
                          Text(
                            'Category',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: D.H / 45,
                              color: ColorConstants.blackColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        readOnly: false,
                        controller: controller,
                        cursorColor: ColorConstants.primaryBlueColor,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.grey,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: D.W / 40, vertical: D.H / 60),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFFD7D7D7), width: 1.0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          counterText: "",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFFD7D7D7), width: 1.0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorMaxLines: 1,
                          hintText: "UI/UX Design",
                          labelStyle:
                          const TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text(
                            'Sub Category',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: D.H / 45,
                              color: ColorConstants.blackColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        readOnly: false,
                        controller: controller,
                        cursorColor: ColorConstants.primaryBlueColor,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.grey,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: D.W / 40, vertical: D.H / 60),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFFD7D7D7), width: 1.0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          counterText: "",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFFD7D7D7), width: 1.0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorMaxLines: 1,
                          hintText: "UI/UX Design",
                          labelStyle:
                          const TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Location',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 45,
                                color: ColorConstants.blackColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: D.W / 50,
                          ),
                          Expanded(
                            child: Text(
                              'Salary',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: D.H / 45,
                                color: ColorConstants.blackColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              readOnly: false,
                              controller: controller,
                              cursorColor: ColorConstants.primaryBlueColor,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.grey,
                                ),
                                suffixIcon: Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.grey,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: D.W / 40, vertical: D.H / 60),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFD7D7D7), width: 1.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFD7D7D7), width: 1.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorMaxLines: 1,
                                hintText: "India",
                                labelStyle: const TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: D.W / 50,
                          ),
                          Expanded(
                            child: TextFormField(
                              readOnly: false,
                              controller: controller,
                              cursorColor: ColorConstants.primaryBlueColor,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_balance_wallet_outlined,
                                  color: Colors.grey,
                                ),
                                suffixIcon: Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.grey,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: D.W / 40, vertical: D.H / 60),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFD7D7D7), width: 1.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFD7D7D7), width: 1.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorMaxLines: 1,
                                hintText: "15k-25k",
                                labelStyle: const TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Job Type',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: D.H / 45,
                              color: ColorConstants.blackColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: InkWell(
                                onTap: () {
                                  selcetedFilter="Full Time";
                                  state(() {});
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selcetedFilter=="Full Time"?ColorConstants.primaryBlueColor:ColorConstants.greycolor.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                    height: 45,
                                    child: Center(
                                        child: Text(
                                          "Full Time",
                                          style: GoogleFonts.roboto(
                                              color:  selcetedFilter=="Full Time"?Colors.white:ColorConstants.blackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: D.H / 70),
                                        ))),
                              )),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                              child: InkWell(
                                onTap: () {
                                  selcetedFilter="Part Time";
                                  state(() {});
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selcetedFilter=="Part Time"?ColorConstants.primaryBlueColor:ColorConstants.greycolor.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                    height: 45,
                                    child: Center(
                                        child: Text(
                                          "Part Time",
                                          style: GoogleFonts.roboto(
                                              color:  selcetedFilter=="Part Time"?Colors.white:ColorConstants.blackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: D.H / 70),
                                        ))),
                              )),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                              child: InkWell(
                                onTap: () {
                                  selcetedFilter="Contract";
                                  state(() {});
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selcetedFilter=="Contract"?ColorConstants.primaryBlueColor:ColorConstants.greycolor.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                    height: 45,
                                    child: Center(
                                        child: Text(
                                          "Contract",
                                          style: GoogleFonts.roboto(
                                              color:  selcetedFilter=="Contract"?Colors.white:ColorConstants.blackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: D.H / 70),
                                        ))),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: InkWell(
                                onTap: () {
                                  selcetedFilter="Freelance";
                                  state(() {});
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selcetedFilter=="Freelance"?ColorConstants.primaryBlueColor:ColorConstants.greycolor.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                    height: 45,
                                    child: Center(
                                        child: Text(
                                          "Freelance",
                                          style: GoogleFonts.roboto(
                                              color:  selcetedFilter=="Freelance"?Colors.white:ColorConstants.blackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: D.H / 70),
                                        ))),
                              )),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                              child: InkWell(
                                onTap: () {
                                  selcetedFilter="Remote";

                                  state(() {});
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selcetedFilter=="Remote"?ColorConstants.primaryBlueColor:ColorConstants.greycolor.withOpacity(0.2),

                                        borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                    height: 45,
                                    child: Center(
                                        child: Text(
                                          "Remote",
                                          style: GoogleFonts.roboto(
                                              color:  selcetedFilter=="Remote"?Colors.white:ColorConstants.blackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: D.H / 70),
                                        ))),
                              )),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                              child: InkWell(
                                onTap: () {
                                  selcetedFilter="Show All Type";
                                  state(() {});
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selcetedFilter=="Show All Type"?ColorConstants.primaryBlueColor:ColorConstants.greycolor.withOpacity(0.2),

                                        borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                    height: 45,
                                    child: Center(
                                        child: Text(
                                          "Show All Type",
                                          style: GoogleFonts.roboto(
                                              color:  selcetedFilter=="Show All Type"?Colors.white:ColorConstants.blackColor,

                                              fontWeight: FontWeight.w400,
                                              fontSize: D.H / 70),
                                        ))),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      WelcomePageRoundedButton(
                        color: ColorConstants.primaryBlueColor,
                        text: 'Apply Filters',
                        fontsize: 18,
                        height: D.H / 15,
                        width: D.W,
                        btnradius: D.H / 50,
                        fontweight: FontWeight.w500,
                        onTap: () {
                          Navigator.pop(context);
                        }, bordercolor: ColorConstants.primaryBlueColor,
                        textcolor: ColorConstants.whiteColor,
                      ),
                    ],
                  ),
                );
              });
        });
  }

}
