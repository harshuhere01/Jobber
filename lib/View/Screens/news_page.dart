import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobber/Constants/color_constants.dart';
import 'package:jobber/CustomWidgets/search_bar_widget.dart';
import 'package:jobber/Model/model.dart';
import 'package:jobber/Utils/dimensions.dart';
import 'package:jobber/Utils/navigation_helper.dart';
import 'package:jobber/View/Screens/news_screen.dart';
import 'package:jobber/View/Screens/search_screen.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsModel> newsList = <NewsModel>[
    NewsModel(
        newstext: 'Will india wins the coveted crown of miss Universe?',
        imagepath: 'https://picsum.photos/300/200'),
    NewsModel(
        newstext: 'PM\'s twitter a\c hacked with Bitcoin post , \'promptly secured\'',
        imagepath: 'https://picsum.photos/300/200'),
    NewsModel(
        newstext: '1971 war : The day Bhutto tore is speech & walked out of UN',
        imagepath: 'https://picsum.photos/300/200'),
    NewsModel(
        newstext: 'How cricket fans rejoicedwith Upstox',
        imagepath: 'https://picsum.photos/300/200'),

  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: D.W / 30.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: D.W / 60,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: newsList.length,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        NavigationHelpers.redirect(context, NewsScreen());
                      },
                      child: Container(
                        width: D.W,
                        height: D.H / 6,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex:5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          newsList[index].newstext.toString(),
                                          style: GoogleFonts.openSans(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 0,
                                          right: 10,
                                        ),
                                        child: Container(
                                          height: D.H / 9,
                                          width: D.W / 3,
                                          child: Center(
                                              child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(Radius.circular(15)),
                                              child: Image.network(newsList[index]
                                                  .imagepath
                                                  .toString()),
                                            ),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
