import 'package:flutter/material.dart';
import 'package:jobber/Utils/dimensions.dart';


class TabButton extends StatelessWidget {
  TabButton(
      {Key? key,
        required this.selectedPage,
        required this.pageNumber,
        required this.color,

        // required this.onPressed
      })
      : super(key: key);

  int selectedPage;
  int pageNumber;
  Color? color;
  // VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
        // decoration: BoxDecoration(
        //   color: selectedPage == pageNumber ? Colors.blue : Colors.transparent,
        //   borderRadius: BorderRadius.circular(4.0),
        // ),
        padding: EdgeInsets.symmetric(
          vertical: D.H / 80,
          horizontal: D.W / 100,
          // selectedPage == pageNumber ? 13.0 : 0,
        ),
        child: Container(
          height: 5,
          width: 30,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(D.W/5)),

              // border: Border.all(color: borderColor)
          ),
        ),
      ),
    );
  }
}