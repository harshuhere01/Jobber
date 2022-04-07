import 'package:flutter/material.dart';
import 'package:jobber/Constants/color_constants.dart';

import '../Model/model.dart';

class Constants{
  static List<CategortTextModel> categoryTextList = <CategortTextModel>[
    CategortTextModel(color:Color(0xFF0062FF) ,text: "Software Engineer"),
    CategortTextModel(color:Colors.pink ,text: "UX Designer"),
    CategortTextModel(color:ColorConstants.primaryBlueColor ,text: "Content Manager"),
    CategortTextModel(color:Colors.black ,text: "Product Manager"),

  ];
  static List<CategoryModelData> categoryModelData = <CategoryModelData>[
    CategoryModelData(icon: "assets/images/homepagecategorybackicon.svg",color:Color(0xFF0062FF) ,text1: "Goverment jobs",text2: "2k job"),
    CategoryModelData(icon:"assets/images/categorybackicon2.svg" ,color:Color(0xFF7000FF) ,text1: "Bank jobs",text2: "2k job"),
    CategoryModelData(icon:"assets/images/homecategoryicon3.svg" ,color:Color(0xFF84FF89) ,text1: "Railways jobs",text2: "2k job"),
    CategoryModelData(icon: "assets/images/homepagecategorybackicon.svg",color:ColorConstants.primaryBlueColor ,text1: "Computer Science",text2: "2k job"),


  ];
  static List<PopularJobModelData> popularjobs = <PopularJobModelData>[
    PopularJobModelData(icon: "assets/images/googleicon.svg",isLiked: true ,text1: "Product Manager",text2: '\$2500/m',text3: "Google"),
    PopularJobModelData(icon: "assets/images/spotify.svg",isLiked: true ,text1: "Ui/Ux Designer",text2: '\$2500/m',text3: "Spotify"),
    PopularJobModelData(icon: "assets/images/googleicon.svg",isLiked: true ,text1: "Product Manager",text2: '\$2500/m',text3: "Google"),
    PopularJobModelData(icon: "assets/images/spotify.svg",isLiked: true ,text1: "Ui/Ux Designer",text2: '\$2500/m',text3: "Spotify"),



  ];

  static List<SearchJobListData> searchJobList = <SearchJobListData>[
    SearchJobListData(icon: "assets/images/searchiconone.png",isLiked: false ,text1: "Mid level UX Designer",text2: 'Contractual',text3: "Total"),
    SearchJobListData(icon: "assets/images/searchicontwo.png",isLiked: true ,text1: "Design Lead",text2: 'Full time',text3: "GitLab"),
    SearchJobListData(icon: "assets/images/searchiconthree.png",isLiked: true ,text1: "UX Researcher ",text2: 'Half time',text3: "Paypal"),
    SearchJobListData(icon: "assets/images/searchiconfour.png",isLiked: true ,text1: "Product Design",text2: 'Contractual',text3: "Uber"),
    SearchJobListData(icon: "assets/images/searchiconone.png",isLiked: true ,text1: "Design Lead",text2: 'Full time',text3: "Total"),
    SearchJobListData(icon: "assets/images/searchicontwo.png",isLiked: true ,text1: "UX Researcher",text2: 'Half time',text3: "GitLab"),



  ];
}