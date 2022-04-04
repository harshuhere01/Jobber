import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_button.dart';
import 'package:jobber/CustomWidgets/custom_textform_field.dart';
import '../../CustomWidgets/custom_border_textform_field.dart';
import '../../CustomWidgets/custom_squre_button.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black87,),onPressed: (){Navigator.pop(context);}),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: D.W/15),
        child: Column(
          children: [
            Row(
              children: [
                Text("Reset Password",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: D.H/25),),
              ],
            ),
            SizedBox(height: D.H/90,),
            Row(
              children: [
                Container(
                    width: D.W/1.20,
                    child: Text("Enter the email associated with your account and we’ll send an email with instructions to reset your password.",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: D.H/50,color: Colors.black.withOpacity(0.5)),)),
              ],
            ),
            SizedBox(height: D.H/25,),
            Row(
              children: [
                Text("Email address",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: D.H/50,color: Colors.black.withOpacity(0.5)),),
              ],
            ),
            CustomBorderTextFormField(controller: controller, readOnly: false, hint: "Enter Email",  validators: (e) {}, keyboardTYPE: TextInputType.emailAddress),
            SizedBox(height: D.H/45,),
            CustomSqureButton(text: "Send", color: ColorConstants.primaryBlueColor, textColor: ColorConstants.whiteColor, bordercolor: ColorConstants.primaryBlueColor, onTap: (){}),
          ],
        ),
      ),
    );
  }
}
