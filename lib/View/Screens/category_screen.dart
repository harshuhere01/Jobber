import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Utils/dimensions.dart';

import '../../Constants/color_constants.dart';
import '../../Constants/constants.dart';
import '../../CustomWidgets/search_bar_widget.dart';
import '../../Model/model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: (){
          Navigator.pop(context);
        }),
        title: Text(
          "Category Name",
          style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: D.H / 35),
        ),
        actions: [
          Center(
              child: Container(
            height: D.H / 15,
            width: D.W / 8,
            child: Image.asset("assets/images/appbarprofileicon.png"),
          ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 30.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                        child:Container(

                          padding: EdgeInsets.symmetric(horizontal: D.W /  60, vertical: D.H / 100),
                          child: SizedBox(
                            height: 50,
                            child: TextFormField(
                              controller:controller,
                              onChanged: (val){
                               changeList();

                              },
                              autofocus: true,
                              cursorColor: ColorConstants.primaryBlueColor,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                focusColor: ColorConstants.whiteColor,
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.1),
                                focusedBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                errorMaxLines: 4,
                                hintText: "Search here...",
                                labelStyle: const TextStyle(fontSize: 16.0, color: Colors.grey),
                              ),
                            ),
                          ),
                        )
                     ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlueColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      width: D.W / 9,
                      height: D.H / 19,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset("assets/images/filtericon.svg",color: ColorConstants.whiteColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
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
                                      child: Text(templist[index].text2.toString(),style: GoogleFonts.poppins(color: Colors.black),),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color:Colors.grey.withOpacity(0.1),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("\$100k - \$120k/yearly"),
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
}
