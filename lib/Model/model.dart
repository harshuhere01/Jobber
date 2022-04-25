import 'dart:ui';

class CategortTextModel {
  String? text;
  bool? isFavourite;
  Color? color;

  CategortTextModel(
      {required this.text, required this.color, required this.isFavourite});

  CategortTextModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    color = json['color'];
    isFavourite = json['isFavourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['color'] = this.color;
    data['isFavourite'] = this.isFavourite;
    return data;
  }
}

class CategoryModelData {
  String? icon;
  String? text1;
  String? text2;
  Color? color;

  CategoryModelData(
      {required this.icon,
      required this.text1,
      required this.text2,
      required this.color});

  CategoryModelData.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    text1 = json['text1'];
    text2 = json['text2'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['text1'] = this.text1;
    data['text2'] = this.text2;
    data['color'] = this.color;
    return data;
  }
}

class PopularJobModelData {
  String? icon;
  bool? isLiked;
  String? text1;
  String? text2;
  String? text3;
  String? id;

  PopularJobModelData(
      {required this.icon,
      required this.isLiked,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.id});

  PopularJobModelData.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    isLiked = json['isLiked'];
    text1 = json['text1'];
    text2 = json['text2'];
    text3 = json['text3'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['isLiked'] = this.isLiked;
    data['text1'] = this.text1;
    data['text2'] = this.text2;
    data['text3'] = this.text3;
    data['id'] = this.id;
    return data;
  }
}

class SearchJobListData {
  String? icon;
  bool? isLiked;
  String? text1;
  String? text2;
  String? text3;

  SearchJobListData(
      {required this.icon,
      required this.isLiked,
      required this.text1,
      required this.text2,
      required this.text3});

  SearchJobListData.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    isLiked = json['isLiked'];
    text1 = json['text1'];
    text2 = json['text2'];
    text3 = json['text3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['isLiked'] = this.isLiked;
    data['text1'] = this.text1;
    data['text2'] = this.text2;
    data['text3'] = this.text3;
    return data;
  }
}

class NewsModel {
  String? newstext;
  String? imagepath;

  NewsModel({required this.newstext, required this.imagepath});

  NewsModel.fromJson(Map<String, dynamic> json) {
    newstext = json['newstext'];
    imagepath = json['imagepath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['newstext'] = this.newstext;
    data['imagepath'] = this.imagepath;

    return data;
  }
}
