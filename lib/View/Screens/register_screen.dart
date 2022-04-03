import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/custom_textform_field.dart';

import '../../Utils/dimensions.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        leading: IconButton(icon: Icon(CupertinoIcons.left_chevron,color: Colors.black87,),onPressed: (){}),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: D.W/20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Register Account",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: D.H/30),),
              ],
            ),
            SizedBox(height: D.H/90,),
            Row(
              children: [
                Text("Fill your details or continue\nwith social media",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: D.H/65,color: Colors.black.withOpacity(0.5)),),
              ],
            ),
            SizedBox(height: D.H/50,),
            CustomTextFormField(controller: controller, readOnly: false, hint: "Email Address", iconPath:Icons.email_outlined,  validators: (e) {}, keyboardTYPE: TextInputType.emailAddress)
          ],
        ),
      ),
    );
  }
}
