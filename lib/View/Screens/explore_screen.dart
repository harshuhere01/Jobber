import 'package:flutter/material.dart';
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

class Choice {
  Choice({required this.imgUrl, required this.name, required this.post, required this.matual, required this.location});
  final String imgUrl;
  final String name;
  final String post;
  final String matual;
  final String location;
}

List<Choice> choices = <Choice>[
  Choice(imgUrl: 'https://images.pexels.com/photos/3671083/pexels-photo-3671083.jpeg', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1615893208238-ead83e5a2b3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1576828831022-ca41d3905fb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=723&q=80', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1615893629034-7a948592ce75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1540174401473-df5f1c06c716?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1615892376613-4ee6dbe6ceef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1500917293891-ef795e70e1f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1610521411256-6664ca58a072?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
  Choice(imgUrl: 'https://images.unsplash.com/photo-1613964143672-ae5cc4f412d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fHN0eWxlJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60', name: 'Mary M', post: "Engineer",matual:"2 mutual connections",location:"Ahmedabad"),
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
          color: Colors.white,
          border: Border.all(color:Colors.grey.shade200,),
          borderRadius: BorderRadius.circular(D.H/50),
        ),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:D.H/90),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      widget.choice.imgUrl,
                      height: D.H/8,
                      width: D.H/8,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:D.H/100),
                  child: Text(widget.choice.name,style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.normal,fontSize: D.H/50)),
                ),
                SizedBox(height: D.H/125),
                Text(widget.choice.post,style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/65)),
                SizedBox(height: D.H/125),
                Text(widget.choice.matual,style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/65)),
                SizedBox(height: D.H/125),
                Text(widget.choice.location,style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: D.H/65)),
                Padding(
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
                                fontSize: D.H/40,color:ColorConstants.primaryBlueColor,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {

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