import 'package:flutter/material.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/welcome_page_tab_button.dart';
import 'package:jobber/View/Screens/welcome_page1.dart';
import 'package:jobber/View/Screens/welcome_page2.dart';
import 'package:jobber/View/Screens/welcome_page3.dart';

class WelcomePageMain extends StatefulWidget {
  const WelcomePageMain({Key? key}) : super(key: key);

  @override
  State<WelcomePageMain> createState() => _WelcomePageMainState();
}

class _WelcomePageMainState extends State<WelcomePageMain> {
  int _selectedPage = 0;
  bool isPageSelected = false;
  PageController _pageController = PageController(
    keepPage: true,
  );

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController.animateToPage(
        pageNum,
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: PageView(
              // physics: NeverScrollableScrollPhysics(),
              onPageChanged: (int page) {
                setState(() {
                  _selectedPage = page;
                });
              },
              controller: _pageController,
              children:  [
                WelcomePage1(onTap: (){_changePage(1);}),
                WelcomePage2(onTap: (){_changePage(2);}),
                WelcomePage3(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabButton(
                pageNumber: 0,
                selectedPage: _selectedPage,
                // onPressed: () {
                //   _changePage(0);
                // },
                color: _selectedPage >= 0
                    ? ColorConstants.primaryBlueColor
                    : ColorConstants.tabbtncolor,
              ),
              TabButton(
                pageNumber: 1,
                selectedPage: _selectedPage,
                // onPressed: () {
                //   _changePage(1);
                // },
                color: _selectedPage >= 1
                    ? ColorConstants.primaryBlueColor
                    : ColorConstants.tabbtncolor,
              ),
              TabButton(
                pageNumber: 2,
                selectedPage: _selectedPage,
                // onPressed: () {
                //   _changePage(2);
                // },
                color: _selectedPage >= 2
                    ? ColorConstants.primaryBlueColor
                    : ColorConstants.tabbtncolor,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
