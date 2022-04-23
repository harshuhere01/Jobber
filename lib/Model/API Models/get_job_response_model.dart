class GetJobResponseModel {
  bool? success;
  List<Data>? data;

  GetJobResponseModel({this.success, this.data});

  GetJobResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? description;
  bool? isFeatured;
  String? createdAt;
  String? updatedAt;
  int? jobsCount;
  String? imageUrl;
  List<String>? media;

  Data(
      {this.id,
        this.name,
        this.description,
        this.isFeatured,
        this.createdAt,
        this.updatedAt,
        this.jobsCount,
        this.imageUrl,
        this.media});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    isFeatured = json['is_featured'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    jobsCount = json['jobs_count'];
    imageUrl = json['image_url'];
    media = json['media'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['is_featured'] = this.isFeatured;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['jobs_count'] = this.jobsCount;
    data['image_url'] = this.imageUrl;
    data['media'] = this.media;
    return data;
  }
}
