import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/Utils/dimensions.dart';

class GenderBox extends StatelessWidget {
  GenderBox(
      {Key? key,
      required this.radioGroupValue,
      required this.radioValue,
      required this.onChenaged,
      required this.ontap,
      required this.imgPath})
      : super(key: key);

  int radioValue;
  int radioGroupValue;
  Function onChenaged;
  Function ontap;
  String imgPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: D.H / 9,
        width: D.H / 9,
        decoration: BoxDecoration(
          border: Border.all(
              color: ColorConstants.greycolor.withOpacity(0.5), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(D.H / 50)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -D.H / 100,
              left: -D.H / 100,
              child: Radio(
                value: radioValue,
                fillColor: MaterialStateProperty.all(ColorConstants.blackColor),
                groupValue: radioGroupValue,
                onChanged: (value) {
                  onChenaged(value);
                },
              ),
            ),
            Center(child: Image.asset(imgPath)),
          ],
        ),
      ),
    );
  }
}
