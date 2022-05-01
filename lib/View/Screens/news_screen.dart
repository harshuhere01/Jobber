import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';
class NewsScreen extends StatefulWidget {
  String url;
   NewsScreen({required this.url});

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
                  child: Text("Travel Blog",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/35)),
                ),
              ],
            ),
            SizedBox(height: 8,),

            Container(child: Image.network(widget.url.toString(),fit: BoxFit.cover,height:D.H/4,width:D.W,),),
           SizedBox(height: 12,),
            Row(
              children: [
                Text("Glamping in the Lake District",style: GoogleFonts.roboto(color:Colors.black,fontWeight: FontWeight.bold,fontSize: D.H/40)),
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
                        child: Text("The Lake District in England is one of my favourite places in the UK. It’s close to my house, and as some of you may have seen on my Instagram, I’ve been spending a bit of time there recently, hiking and wild swimming.There are so many wonderful places to visit in the Lake District, plus it’s a great place to go ‘glamping’ (one of my other favourite things to do)!Glamping is basically luxury camping. Unlike traditional camping, where you have to set up a tent and sleep on a roll mat on the floor, glamping is where you stay in a pre-erected tent or a wooden hut or pod, often with proper beds and sometimes a private bathroom. Hence the name ‘glamping’.These are great for those who want to experience the great outdoors but aren’t quite ready for camping or even wild camping in the Lake District (and perhaps never will be). Plus, the campsites are usually in a stunning location, surrounded by nature, so you’re getting the best of both worlds.So here are a few suggestions for where to go glamping in the Lake District.",
                            style: GoogleFonts.roboto(color:ColorConstants.blackColor.withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: D.H/60,height: 2)),
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
