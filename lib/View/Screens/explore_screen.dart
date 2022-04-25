import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';
import 'explore_detail_screen.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: EdgeInsets.symmetric(horizontal: D.W / 18.0),
             child: Row(
               children: [
                   Text("Explore",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/30)),
               ],
             ),
           ),
           Padding(
             padding:  EdgeInsets.only(left: D.H/70,right: D.H/70, top: D.H/60),
             child: Column(
               children: [
                 Padding(
                   padding:  EdgeInsets.only(left: D.H/110,right: D.H/110),
                   child: Container(
                     height: D.H/27,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                       border: Border.all(
                         width: 1,
                           color:Colors.grey.shade200
                       ),
                       borderRadius: BorderRadius.circular(D.H/80),
                     ),
                     child: Container(
                       child: Row(
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left:D.H/80),
                             child: Text(
                               "Recommended for you",
                               style: TextStyle(
                                   fontSize: D.H/65 ,color:Colors.grey,fontWeight: FontWeight.bold),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 GridView.builder(
                   physics: NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     childAspectRatio: 0.65,
                   ),
                   itemCount: choices.length,
                   itemBuilder: (context, index) {
                     return  Center(
                       child: Padding(
                         padding:  EdgeInsets.only(left: D.H/120,right: D.H/110,top: D.H/70),
                         child: SelectCard(
                           choice: choices[index],
                         ),
                       ),
                     );
                   },
                 ),
               ],
             ),
           ),
         ],
       ),
     ),
    );
  }
}

// class Choice {
//   Choice({required this.imgUrl, required this.name, required this.post, required this.matual, required this.location});
//   final String imgUrl;
//   final String name;
//   final String post;
//   final String matual;
//   final String location;
// }
class Choice {
  String? imgUrl;
  String? name;
  String? post;
  String? matual;
  String? location;
  bool? isPending;
  Choice({required this.imgUrl, required this.name, required this.post, required this.matual, required this.location,required this.isPending});


  Choice.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    name = json['name'];
    post = json['post'];
    matual = json['matual'];
    isPending = json['isPending'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['name'] = this.name;
    data['post'] = this.post;
    data['matual'] = this.matual;
    data['isPending'] = this.isPending;
    return data;
  }
}

List<Choice> choices = <Choice>[
  Choice(imgUrl: 'https://images.pexels.com/photos/3671083/pexels-photo-3671083.jpeg', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1615893208238-ead83e5a2b3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80', name: 'Mary M', post: "Business Ownwer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1576828831022-ca41d3905fb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=723&q=80', name: 'Mary M', post: "Designer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1615893629034-7a948592ce75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', name: 'Mary M', post: "Project Manager",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1540174401473-df5f1c06c716?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1615892376613-4ee6dbe6ceef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1500917293891-ef795e70e1f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1610521411256-6664ca58a072?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1613964143672-ae5cc4f412d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad",isPending: false),
];

class SelectCard extends StatefulWidget {
  SelectCard({Key? key, required this.choice});

  final Choice choice;

  @override
  State<SelectCard> createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          border: Border.all(color:Colors.grey.shade200,),
          borderRadius: BorderRadius.circular(D.H/70),
        ),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: [
                    Container(height: D.H/12,decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          ColorConstants.primaryBlueColor.withOpacity(0.4),
                          Color(0xFF2193b0)
                        ],
                      ),
                    ),),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top:D.H/90),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: FadeInImage(

                            height: D.H/8,
                            width: D.H/8,
                            fit: BoxFit.fill, image: NetworkImage( widget.choice.imgUrl.toString()), placeholder:AssetImage("assets/images/placeholder.png") ,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,top: 0,
                        child: Icon(Icons.cancel,color: Colors.black,))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top:D.H/100),
                  child: Text(widget.choice.name.toString(),style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500,fontSize: D.H/50)),
                ),
                SizedBox(height: D.H/500),
                Text(widget.choice.post.toString(),style: GoogleFonts.roboto(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: D.H/65)),
                SizedBox(height: D.H/125),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/connect.svg",height: 12,width: 12,color: ColorConstants.primaryBlueColor,),
                    SizedBox(width: 4,),
                    Text(widget.choice.matual.toString(),style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/65)),
                  ],
                ),
                SizedBox(height: D.H/125),
                Text(widget.choice.location.toString(),style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/65)),
                widget.choice.isPending??false?Padding(
                  padding: EdgeInsets.only(top: D.H/100),
                  child: GestureDetector(
                    child: Container(
                      height: D.H/24,
                      width: D.W/3.2,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          width: 1,
                          color:Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(D.H/50),
                      ),
                      child: Container(
                        child: Center(
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                fontSize: D.H/55,color:ColorConstants.blackColor,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      widget.choice.isPending=true;
                      setState(() {

                      });
                    },
                  ),
                ):Padding(
                  padding: EdgeInsets.only(top: D.H/100),
                  child: GestureDetector(
                    child: Container(
                      height: D.H/24,
                      width: D.W/3.2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color:ColorConstants.primaryBlueColor,
                        ),
                        borderRadius: BorderRadius.circular(D.H/50),
                      ),
                      child: Container(
                        child: Center(
                          child: Text(
                           "Connect",
                            style: TextStyle(
                                fontSize: D.H/55,color:ColorConstants.primaryBlueColor,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                        widget.choice.isPending=true;
                        setState(() {

                        });
                    },
                  ),
                ),
              ]),
        ),
      ),
      onTap: (){
        NavigationHelpers.redirect(context, ExploreDetailScreen());
      },
    );
  }
}