import 'package:flutter/material.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/text_medium_500.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/visiting_card_1.dart';
import 'package:jobber/View/Screens/visiting_card_2.dart';
import 'package:jobber/View/Screens/visiting_card_3.dart';
import 'package:jobber/View/Screens/visiting_card_4.dart';

import '../../CustomWidgets/tab_button.dart';

class VisitingCardMain extends StatefulWidget {
  const VisitingCardMain({Key? key}) : super(key: key);

  @override
  State<VisitingCardMain> createState() => _VisitingCardMainState();
}

class _VisitingCardMainState extends State<VisitingCardMain> {
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
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: D.H / 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    SizedBox(
                      height: D.H / 50,
                    ),
                    Center(
                      child: Container(
                        height: D.H / 11,
                        width: D.H / 6,
                        child: Image.asset("assets/images/splashimage.png"),
                      ),
                    ),
                    SizedBox(
                      height: D.H / 51,
                    ),
                    TextMedium500(
                      text: 'Let\’s make your visiting card',
                      fontSize: D.H / 35,
                      textColor: ColorConstants.blackColor,
                    ),
                    SizedBox(
                      height: D.H / 50,
                    ),
                    Image.asset('assets/images/demo_visiting_card.png'),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: D.H/50),
                          child: Stack(
                            children: [
                              Line(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TabButton(
                               text: '1',
                                    pageNumber: 0,
                                    selectedPage: _selectedPage,
                                    onPressed: () {
                                      _changePage(0);
                                    },
                                    color: _selectedPage >= 0
                                        ? ColorConstants.primaryGreenColor
                                        : ColorConstants.whiteColor,
                                    borderColor: ColorConstants.primaryBlueColor,
                                  ),
                                  TabButton(
                                    text: '2',
                                    pageNumber: 1,
                                    selectedPage: _selectedPage,
                                    onPressed: () {
                                      _changePage(1);
                                    },
                                    color: _selectedPage >= 1
                                        ? ColorConstants.primaryGreenColor
                                        : ColorConstants.whiteColor,
                                    borderColor: ColorConstants.primaryBlueColor,
                                  ),
                                  TabButton(
                                    text: '3',
                                    pageNumber: 2,
                                    selectedPage: _selectedPage,
                                    onPressed: () {
                                      _changePage(2);
                                    },
                                    color: _selectedPage >= 2
                                        ? ColorConstants.primaryGreenColor
                                        : ColorConstants.whiteColor,
                                    borderColor: ColorConstants.primaryBlueColor,
                                  ),
                                  TabButton(
                                   text: '4',
                                    pageNumber: 3,
                                    selectedPage: _selectedPage,
                                    onPressed: () {
                                      _changePage(3);
                                    },
                                    color: _selectedPage >= 3
                                        ? ColorConstants.primaryGreenColor
                                        : ColorConstants.whiteColor,
                                    borderColor: ColorConstants.primaryBlueColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      onPageChanged: (int page) {
                        setState(() {
                          _selectedPage = page;
                        });
                      },
                      controller: _pageController,
                      children: [
                        VisitingCard1(onTap: (){_changePage(1);}),
                        VisitingCard2(onTap: (){_changePage(2);}),
                        VisitingCard3(onTap: (){_changePage(3);}),
                        VisitingCard4(onTap: (){_changePage(4);}),
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
