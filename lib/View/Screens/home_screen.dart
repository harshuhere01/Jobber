import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/search_bar_widget.dart';

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
            Container(width: D.W,height: D.H/10,child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx,int){
                return Padding(
                  padding:  EdgeInsets.only(right: D.W/35.0),
                  child: Container(
                    child: Row(children: [Text("Software Engineer"),SizedBox(width: 3,),Icon(Icons.cancel,color: Color(0xFFFF6C6C).withOpacity(0.5),)],),
                  ),
                );
              },
            ),)
          ],
        ),
      ),
    );
  }
}
