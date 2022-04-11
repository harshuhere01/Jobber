import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/CustomWidgets/custom_textform_field_for_profile.dart';

import '../../Constants/color_constants.dart';
import '../../Utils/dimensions.dart';

class MyDEtailScreen extends StatefulWidget {
  const MyDEtailScreen({Key? key}) : super(key: key);

  @override
  _MyDEtailScreenState createState() => _MyDEtailScreenState();
}

class _MyDEtailScreenState extends State<MyDEtailScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 16.0),
            child: Column(
              children: [
              Container(
                decoration: BoxDecoration(
                    color:Color(0xFFEEEEEE),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(children: [
                    Text("My Details",style: GoogleFonts.roboto(color:Colors.black,fontSize: D.H/50,fontWeight: FontWeight.w500),)
                  ],),
                ),),
              SizedBox(height: D.H/30,),
              CustomTextFormFieldForProfile(controller: controller, readOnly: false, hint: "Ram", validators: (val){}, keyboardTYPE: TextInputType.name, obscured: false, headerText: 'First Name',),
                SizedBox(height: D.H/70,),
                CustomTextFormFieldForProfile(controller: controller, readOnly: false, hint: "Kumar", validators: (val){}, keyboardTYPE: TextInputType.name, obscured: false, headerText: 'Last Name',),
                SizedBox(height: D.H/70,),
                CustomTextFormFieldForProfile(controller: controller, readOnly: false, hint: "test@gmail.com", validators: (val){}, keyboardTYPE: TextInputType.name, obscured: false, headerText: 'Email',),
                SizedBox(height: D.H/70,),
                CustomTextFormFieldForProfile(controller: controller, readOnly: false, hint: "Rajesh Kumar", validators: (val){}, keyboardTYPE: TextInputType.name, obscured: false, headerText: 'Father Name',),
                SizedBox(height: D.H/70,),
                CustomTextFormFieldForProfile(controller: controller, readOnly: false, hint: "Birth Date", validators: (val){}, keyboardTYPE: TextInputType.name, obscured: false, headerText: 'Birth Date',),
                SizedBox(height: D.H/70,),
                CustomTextFormFieldForProfile(controller: controller, readOnly: false, hint: "Ram", validators: (val){}, keyboardTYPE: TextInputType.name, obscured: false, headerText: 'First Name',),
                SizedBox(height: D.H/70,),
                CustomTextFormFieldForProfile(controller: controller, readOnly: false, hint: "Ram", validators: (val){}, keyboardTYPE: TextInputType.name, obscured: false, headerText: 'First Name',),


              ],),
          ),
        ),
      ),
    );
  }
}
