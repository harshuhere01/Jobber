import 'job_detail_model.dart';

class AppliedJobModel {
  bool? success;
  List<JobData>? data;

  AppliedJobModel({this.success, this.data});

  AppliedJobModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <JobData>[];
      json['data'].forEach((v) {
        data!.add(new JobData.fromJson(v));
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

class JobData {
  int? id;
  int? jobId;
  int? candidateId;
  int? resumeId;
  int? expectedSalary;
  String? notes;
  String? jobStageId;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? resumeUrl;
  Candidate? candidate;
  Job? job;
  String? jobStage;

  JobData(
      {this.id,
        this.jobId,
        this.candidateId,
        this.resumeId,
        this.expectedSalary,
        this.notes,
        this.jobStageId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.resumeUrl,
        this.candidate,
        this.job,
        this.jobStage});

  JobData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jobId = json['job_id'];
    candidateId = json['candidate_id'];
    resumeId = json['resume_id'];
    expectedSalary = json['expected_salary'];
    notes = json['notes'];
    jobStageId = json['job_stage_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    resumeUrl = json['resume_url'];
    candidate = json['candidate'] != null
        ? new Candidate.fromJson(json['candidate'])
        : null;
    job = json['job'] != null ? new Job.fromJson(json['job']) : null;
    jobStage = json['job_stage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['job_id'] = this.jobId;
    data['candidate_id'] = this.candidateId;
    data['resume_id'] = this.resumeId;
    data['expected_salary'] = this.expectedSalary;
    data['notes'] = this.notes;
    data['job_stage_id'] = this.jobStageId;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['resume_url'] = this.resumeUrl;
    if (this.candidate != null) {
      data['candidate'] = this.candidate!.toJson();
    }
    if (this.job != null) {
      data['job'] = this.job!.toJson();
    }
    data['job_stage'] = this.jobStage;
    return data;
  }
}

class Candidate {
  int? id;
  int? userId;
  String? uniqueId;
  String? fatherName;
  String? maritalStatusId;
  String? nationality;
  String? nationalIdCard;
  String? experience;
  String? careerLevelId;
  String? industryId;
  String? functionalAreaId;
  String? currentSalary;
  String? expectedSalary;
  String? salaryCurrency;
  String? address;
  int? immediateAvailable;
  String? availableAt;
  String? createdAt;
  String? updatedAt;
  int? jobAlert;
  String? countryName;
  String? stateName;
  String? cityName;
  String? fullLocation;
  String? candidateUrl;
  User? user;

  Candidate(
      {this.id,
        this.userId,
        this.uniqueId,
        this.fatherName,
        this.maritalStatusId,
        this.nationality,
        this.nationalIdCard,
        this.experience,
        this.careerLevelId,
        this.industryId,
        this.functionalAreaId,
        this.currentSalary,
        this.expectedSalary,
        this.salaryCurrency,
        this.address,
        this.immediateAvailable,
        this.availableAt,
        this.createdAt,
        this.updatedAt,
        this.jobAlert,
        this.countryName,
        this.stateName,
        this.cityName,
        this.fullLocation,
        this.candidateUrl,
        this.user});

  Candidate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    uniqueId = json['unique_id'];
    fatherName = json['father_name'];
    maritalStatusId = json['marital_status_id'];
    nationality = json['nationality'];
    nationalIdCard = json['national_id_card'];
    experience = json['experience'];
    careerLevelId = json['career_level_id'];
    industryId = json['industry_id'];
    functionalAreaId = json['functional_area_id'];
    currentSalary = json['current_salary'];
    expectedSalary = json['expected_salary'];
    salaryCurrency = json['salary_currency'];
    address = json['address'];
    immediateAvailable = json['immediate_available'];
    availableAt = json['available_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    jobAlert = json['job_alert'];
    countryName = json['country_name'];
    stateName = json['state_name'];
    cityName = json['city_name'];
    fullLocation = json['full_location'];
    candidateUrl = json['candidate_url'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['unique_id'] = this.uniqueId;
    data['father_name'] = this.fatherName;
    data['marital_status_id'] = this.maritalStatusId;
    data['nationality'] = this.nationality;
    data['national_id_card'] = this.nationalIdCard;
    data['experience'] = this.experience;
    data['career_level_id'] = this.careerLevelId;
    data['industry_id'] = this.industryId;
    data['functional_area_id'] = this.functionalAreaId;
    data['current_salary'] = this.currentSalary;
    data['expected_salary'] = this.expectedSalary;
    data['salary_currency'] = this.salaryCurrency;
    data['address'] = this.address;
    data['immediate_available'] = this.immediateAvailable;
    data['available_at'] = this.availableAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['job_alert'] = this.jobAlert;
    data['country_name'] = this.countryName;
    data['state_name'] = this.stateName;
    data['city_name'] = this.cityName;
    data['full_location'] = this.fullLocation;
    data['candidate_url'] = this.candidateUrl;
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

class Job {
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
  Country? country;
  State? state;
  City? city;
  String? activeFeatured;
  Currency? currency;

  Job(
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
        this.country,
        this.state,
        this.city,
        this.activeFeatured,
        this.currency});

  Job.fromJson(Map<String, dynamic> json) {
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
    country =
    json['country'] != null ? new Country.fromJson(json['country']) : null;
    state = json['state'] != null ? new State.fromJson(json['state']) : null;
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    activeFeatured = json['active_featured'];
    currency = json['currency'] != null
        ? new Currency.fromJson(json['currency'])
        : null;
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
    if (this.currency != null) {
      data['currency'] = this.currency!.toJson();
    }
    return data;
  }
}

class Currency {
  int? id;
  String? currencyName;
  String? createdAt;
  String? updatedAt;
  String? currencyIcon;
  String? currencyCode;

  Currency(
      {this.id,
        this.currencyName,
        this.createdAt,
        this.updatedAt,
        this.currencyIcon,
        this.currencyCode});

  Currency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    currencyName = json['currency_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    currencyIcon = json['currency_icon'];
    currencyCode = json['currency_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['currency_name'] = this.currencyName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['currency_icon'] = this.currencyIcon;
    data['currency_code'] = this.currencyCode;
    return data;
  }
}

