import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Utils/common_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Constants/color_constants.dart';
import '../../CustomWidgets/custom_textform_field_for_profile.dart';
import '../../Utils/dimensions.dart';
import '../../Utils/navigation_helper.dart';

class MyExperienceScreen extends StatefulWidget {
  const MyExperienceScreen({Key? key}) : super(key: key);

  @override
  _MyExperienceScreenState createState() => _MyExperienceScreenState();
}

class _MyExperienceScreenState extends State<MyExperienceScreen> {
  final professionController = TextEditingController();
  final companyController = TextEditingController();
  final descriptionController = TextEditingController();
  SharedPreferences? prefs;
  List<String> _profession = [""];
  List<String> _company = [""];
  List<String> _description = [""];

  getPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    _profession = prefs.getStringList("profession")??[];
    _company = prefs.getStringList("company")??[];
    _description = prefs.getStringList("description")??[];
    setState(() {

    });
  }

  @override
  void initState() {
    getPreferences();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
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
      body: Padding(
        padding: EdgeInsets.all(D.H / 50),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Text(
                      "My Experience",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: D.H / 50,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: D.H / 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: D.W / 30),
                  child: Text("Experience",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: D.H / 45)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: D.W / 30),
                  child: Container(
                    width: D.W / 2.25,
                    height: D.H / 18,
                    child: RaisedButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      onPressed: () {
                        _asyncInputDialog(context);
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: D.H / 50,
                            ),
                            Text("Add Experience",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: D.H / 55)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: D.H / 50),
            Container(
              height: D.H / 1.6,
              child: ListView.builder(
                  itemCount: _profession.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: D.H / 40, left: D.W / 60, right: D.W / 60),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: D.H / 5.2,
                        decoration: BoxDecoration(
                          color: ColorConstants.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(D.W / 60.0),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(D.W / 30.0),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(_profession[index].toString(),
                                        style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: D.H / 50)),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 28.0),
                                      child: Container(
                                          child: Row(
                                        children: [
                                          Container(
                                            width: D.W / 12,
                                            height: D.W / 12,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(D.W / 50.0),
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.edit,
                                              color: Colors.grey,
                                              size: D.H / 50,
                                            ),
                                          ),
                                          SizedBox(width: D.H / 80),
                                          InkWell(
                                            onTap: () async {
                                              final prefs = await SharedPreferences.getInstance();
                                              _profession.removeAt(index);
                                              _company.removeAt(index);
                                              _description.removeAt(index);

                                              prefs.setStringList("profession", _profession);
                                              prefs.setStringList("company", _company);
                                              prefs.setStringList("description", _description);

                                              setState(() {

                                              });
                                            },
                                            child: Container(
                                              width: D.W / 12,
                                              height: D.W / 12,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(D.W / 50.0),
                                                ),
                                              ),
                                              child: Icon(Icons.delete_rounded,
                                                  color: Colors.grey,
                                                  size: D.H / 50),
                                            ),
                                          ),
                                        ],
                                      )),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(_company[index].toString(),
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: D.H / 55)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("30th Nov,-31st Jan,2022|India",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: D.H / 55)),
                                  ],
                                ),
                                Container(
                                    child: Row(
                                      children: [
                                        Text(_description[index].toString(),
                                            style: GoogleFonts.roboto(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.normal,
                                                fontSize: D.H / 55)),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Future _asyncInputDialog(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false,
      // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Experience'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: D.W / 1.62,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  controller: professionController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Profession',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: Colors.grey.shade200,
                  ),
                ),
              ),
              SizedBox(
                height: D.H / 40,
              ),
              Container(
                width: D.W / 1.62,
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: companyController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Company Name',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: Colors.grey.shade200,
                  ),
                ),
              ),
              SizedBox(
                height: D.H / 40,
              ),
              Container(
                width: D.W / 1.62,
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: descriptionController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: Colors.grey.shade200,
                  ),
                ),
              ),
              SizedBox(
                height: D.H / 40,
              ),
            ],
          ),
          actions: [
            FlatButton(
              child: Text('Add',
                  style: TextStyle(fontSize: D.H / 40, color: Colors.blue)),
              onPressed: () async {
                if(professionController.text.isEmpty || companyController.text.isEmpty || descriptionController.text.isEmpty){
                  CommonUtils.showRedToastMessage("Please Enter All Values");
                }
                else{
                  final prefs = await SharedPreferences.getInstance();
                  getPreferences();
                  _profession.add(professionController.text.toString());
                  _company.add(companyController.text.toString());
                  _description.add(descriptionController.text.toString());

                  prefs.setStringList("profession", _profession);
                  prefs.setStringList("company", _company);
                  prefs.setStringList("description", _description);

                  professionController.clear();
                  companyController.clear();
                  descriptionController.clear();
                  Navigator.pop(context);
                  setState(() {

                  });
                }



              },
            ),
          ],
        );
      },
    );
  }
  void showInSnackBar(String value) {
    Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text(value)
    ));
  }
}
