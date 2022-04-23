class LoginModel {
  bool? success;
  User? user;
  String? token;

  LoginModel({this.success, this.user, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? emailVerifiedAt;
  String? dob;
  String? gender;
  String? countryId;
  String? stateId;
  String? cityId;
  int? isActive;
  int? isVerified;
  int? ownerId;
  String? ownerType;
  String? language;
  int? profileViews;
  String? createdAt;
  String? updatedAt;
  String? facebookUrl;
  String? twitterUrl;
  String? linkedinUrl;
  String? googlePlusUrl;
  String? pinterestUrl;
  String? stripeId;
  String? regionCode;
  String? fullName;
  String? avatar;
  String? countryName;
  String? stateName;
  String? cityName;
  List<String>? media;
  String? country;
  String? city;
  String? state;

  User(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.emailVerifiedAt,
        this.dob,
        this.gender,
        this.countryId,
        this.stateId,
        this.cityId,
        this.isActive,
        this.isVerified,
        this.ownerId,
        this.ownerType,
        this.language,
        this.profileViews,
        this.createdAt,
        this.updatedAt,
        this.facebookUrl,
        this.twitterUrl,
        this.linkedinUrl,
        this.googlePlusUrl,
        this.pinterestUrl,
        this.stripeId,
        this.regionCode,
        this.fullName,
        this.avatar,
        this.countryName,
        this.stateName,
        this.cityName,
        this.media,
        this.country,
        this.city,
        this.state});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    emailVerifiedAt = json['email_verified_at'];
    dob = json['dob'];
    gender = json['gender'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    isActive = json['is_active'];
    isVerified = json['is_verified'];
    ownerId = json['owner_id'];
    ownerType = json['owner_type'];
    language = json['language'];
    profileViews = json['profile_views'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    facebookUrl = json['facebook_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    googlePlusUrl = json['google_plus_url'];
    pinterestUrl = json['pinterest_url'];
    stripeId = json['stripe_id'];
    regionCode = json['region_code'];
    fullName = json['full_name'];
    avatar = json['avatar'];
    countryName = json['country_name'];
    stateName = json['state_name'];
    cityName = json['city_name'];
    media = json['media'].cast<String>();
    country = json['country'];
    city = json['city'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['country_id'] = this.countryId;
    data['state_id'] = this.stateId;
    data['city_id'] = this.cityId;
    data['is_active'] = this.isActive;
    data['is_verified'] = this.isVerified;
    data['owner_id'] = this.ownerId;
    data['owner_type'] = this.ownerType;
    data['language'] = this.language;
    data['profile_views'] = this.profileViews;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['facebook_url'] = this.facebookUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['google_plus_url'] = this.googlePlusUrl;
    data['pinterest_url'] = this.pinterestUrl;
    data['stripe_id'] = this.stripeId;
    data['region_code'] = this.regionCode;
    data['full_name'] = this.fullName;
    data['avatar'] = this.avatar;
    data['country_name'] = this.countryName;
    data['state_name'] = this.stateName;
    data['city_name'] = this.cityName;
    data['media'] = this.media;
    data['country'] = this.country;
    data['city'] = this.city;
    data['state'] = this.state;
    return data;
  }
}
