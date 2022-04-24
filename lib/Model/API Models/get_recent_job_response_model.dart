import 'job_detail_model.dart';

class GetRecentJobResponseModel {
  bool? success;
  List<RecentJobData>? data;

  GetRecentJobResponseModel({this.success, this.data});

  GetRecentJobResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <RecentJobData>[];
      json['data'].forEach((v) {
        data!.add(new RecentJobData.fromJson(v));
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

class RecentJobData {
  int? id;
  String? jobId;
  String? jobTitle;
  String? description;
  int? countryId;
  int? stateId;
  int? cityId;
  int? salaryFrom;
  int? salaryTo;
  int? companyId;
  int? jobCategoryId;
  int? currencyId;
  int? salaryPeriodId;
  int? jobTypeId;
  int? careerLevelId;
  int? functionalAreaId;
  int? jobShiftId;
  int? degreeLevelId;
  int? position;
  String? jobExpiryDate;
  int? noPreference;
  bool? hideSalary;
  bool? isFreelance;
  bool? isSuspended;
  int? status;
  String? createdAt;
  String? updatedAt;
  int? experience;
  int? isCreatedByAdmin;
  String? countryName;
  String? stateName;
  String? cityName;
  String? fullLocation;
  Country? country;
  State? state;
  City? city;
  String? activeFeatured;
  Company? company;
  JobCategory? jobCategory;
  List<String>? jobsSkill;

  RecentJobData(
      {this.id,
        this.jobId,
        this.jobTitle,
        this.description,
        this.countryId,
        this.stateId,
        this.cityId,
        this.salaryFrom,
        this.salaryTo,
        this.companyId,
        this.jobCategoryId,
        this.currencyId,
        this.salaryPeriodId,
        this.jobTypeId,
        this.careerLevelId,
        this.functionalAreaId,
        this.jobShiftId,
        this.degreeLevelId,
        this.position,
        this.jobExpiryDate,
        this.noPreference,
        this.hideSalary,
        this.isFreelance,
        this.isSuspended,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.experience,
        this.isCreatedByAdmin,
        this.countryName,
        this.stateName,
        this.cityName,
        this.fullLocation,
        this.country,
        this.state,
        this.city,
        this.activeFeatured,
        this.company,
        this.jobCategory,
        this.jobsSkill});

  RecentJobData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jobId = json['job_id'];
    jobTitle = json['job_title'];
    description = json['description'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    salaryFrom = json['salary_from'];
    salaryTo = json['salary_to'];
    companyId = json['company_id'];
    jobCategoryId = json['job_category_id'];
    currencyId = json['currency_id'];
    salaryPeriodId = json['salary_period_id'];
    jobTypeId = json['job_type_id'];
    careerLevelId = json['career_level_id'];
    functionalAreaId = json['functional_area_id'];
    jobShiftId = json['job_shift_id'];
    degreeLevelId = json['degree_level_id'];
    position = json['position'];
    jobExpiryDate = json['job_expiry_date'];
    noPreference = json['no_preference'];
    hideSalary = json['hide_salary'];
    isFreelance = json['is_freelance'];
    isSuspended = json['is_suspended'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    experience = json['experience'];
    isCreatedByAdmin = json['is_created_by_admin'];
    countryName = json['country_name'];
    stateName = json['state_name'];
    cityName = json['city_name'];
    fullLocation = json['full_location'];
    country =
    json['country'] != null ? new Country.fromJson(json['country']) : null;
    state = json['state'] != null ? new State.fromJson(json['state']) : null;
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    activeFeatured = json['active_featured'];
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
    jobCategory = json['job_category'] != null
        ? new JobCategory.fromJson(json['job_category'])
        : null;
    jobsSkill = json['jobs_skill'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['job_id'] = this.jobId;
    data['job_title'] = this.jobTitle;
    data['description'] = this.description;
    data['country_id'] = this.countryId;
    data['state_id'] = this.stateId;
    data['city_id'] = this.cityId;
    data['salary_from'] = this.salaryFrom;
    data['salary_to'] = this.salaryTo;
    data['company_id'] = this.companyId;
    data['job_category_id'] = this.jobCategoryId;
    data['currency_id'] = this.currencyId;
    data['salary_period_id'] = this.salaryPeriodId;
    data['job_type_id'] = this.jobTypeId;
    data['career_level_id'] = this.careerLevelId;
    data['functional_area_id'] = this.functionalAreaId;
    data['job_shift_id'] = this.jobShiftId;
    data['degree_level_id'] = this.degreeLevelId;
    data['position'] = this.position;
    data['job_expiry_date'] = this.jobExpiryDate;
    data['no_preference'] = this.noPreference;
    data['hide_salary'] = this.hideSalary;
    data['is_freelance'] = this.isFreelance;
    data['is_suspended'] = this.isSuspended;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['experience'] = this.experience;
    data['is_created_by_admin'] = this.isCreatedByAdmin;
    data['country_name'] = this.countryName;
    data['state_name'] = this.stateName;
    data['city_name'] = this.cityName;
    data['full_location'] = this.fullLocation;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    if (this.state != null) {
      data['state'] = this.state!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['active_featured'] = this.activeFeatured;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    if (this.jobCategory != null) {
      data['job_category'] = this.jobCategory!.toJson();
    }
    data['jobs_skill'] = this.jobsSkill;
    return data;
  }
}

class Company {
  int? id;
  String? ceo;
  String? noOfOffices;
  int? userId;
  String? industryId;
  String? ownershipTypeId;
  String? companySizeId;
  String? establishedIn;
  String? details;
  String? website;
  String? location;
  String? location2;
  String? fax;
  String? uniqueId;
  String? createdAt;
  String? updatedAt;
  String? companyUrl;
  User? user;

  Company(
      {this.id,
        this.ceo,
        this.noOfOffices,
        this.userId,
        this.industryId,
        this.ownershipTypeId,
        this.companySizeId,
        this.establishedIn,
        this.details,
        this.website,
        this.location,
        this.location2,
        this.fax,
        this.uniqueId,
        this.createdAt,
        this.updatedAt,
        this.companyUrl,
        this.user});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ceo = json['ceo'];
    noOfOffices = json['no_of_offices'];
    userId = json['user_id'];
    industryId = json['industry_id'];
    ownershipTypeId = json['ownership_type_id'];
    companySizeId = json['company_size_id'];
    establishedIn = json['established_in'];
    details = json['details'];
    website = json['website'];
    location = json['location'];
    location2 = json['location2'];
    fax = json['fax'];
    uniqueId = json['unique_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    companyUrl = json['company_url'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ceo'] = this.ceo;
    data['no_of_offices'] = this.noOfOffices;
    data['user_id'] = this.userId;
    data['industry_id'] = this.industryId;
    data['ownership_type_id'] = this.ownershipTypeId;
    data['company_size_id'] = this.companySizeId;
    data['established_in'] = this.establishedIn;
    data['details'] = this.details;
    data['website'] = this.website;
    data['location'] = this.location;
    data['location2'] = this.location2;
    data['fax'] = this.fax;
    data['unique_id'] = this.uniqueId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['company_url'] = this.companyUrl;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
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

class JobCategory {
  int? id;
  String? name;
  String? description;
  bool? isFeatured;
  String? createdAt;
  String? updatedAt;
  String? imageUrl;
  List<String>? media;

  JobCategory(
      {this.id,
        this.name,
        this.description,
        this.isFeatured,
        this.createdAt,
        this.updatedAt,
        this.imageUrl,
        this.media});

  JobCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    isFeatured = json['is_featured'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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
    data['image_url'] = this.imageUrl;
    data['media'] = this.media;
    return data;
  }
}
