import 'package:flutter/material.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/text_medium_500.dart';
import 'package:jobber/Utils/dimensions.dart';

class CreateVisitingCardMainPage extends StatefulWidget {
  const CreateVisitingCardMainPage({Key? key}) : super(key: key);

  @override
  State<CreateVisitingCardMainPage> createState() =>
      _CreateVisitingCardMainPageState();
}

class _CreateVisitingCardMainPageState
    extends State<CreateVisitingCardMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.H/50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: D.H / 8,
                width: D.H / 3,
                child: Image.asset("assets/images/splashimage.png"),
              ),
            ),
            SizedBox(height: D.H/20,),
            TextMedium500(
              text: 'Let\’s start with creating your visiting card',
              fontSize: D.H / 30,
              textColor: ColorConstants.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
