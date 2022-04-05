import 'dart:ui';

class CategortTextModel {
  String? text;
  Color? color;


  CategortTextModel({required this.text, required this.color});

  CategortTextModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    color = json['color'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['color'] = this.color;
    return data;
  }
}
class CategoryModelData {
  String? icon;
  String? text1;
  String? text2;
  Color? color;


  CategoryModelData({required this.icon,required this.text1,required this.text2, required this.color});

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