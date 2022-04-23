class JobDetailModel {
  bool? success;
  Data? data;

  JobDetailModel({this.success, this.data});

  JobDetailModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
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
  List<String>? jobsTag;

  Data(
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
        this.jobsTag});

  Data.fromJson(Map<String, dynamic> json) {
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
    jobsTag = json['jobs_tag'].cast<String>();
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
    data['jobs_tag'] = this.jobsTag;
    return data;
  }
}

class Country {
  int? id;
  String? name;
  String? shortCode;
  String? phoneCode;
  String? createdAt;
  String? updatedAt;

  Country(
      {this.id,
        this.name,
        this.shortCode,
        this.phoneCode,
        this.createdAt,
        this.updatedAt});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortCode = json['short_code'];
    phoneCode = json['phone_code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['short_code'] = this.shortCode;
    data['phone_code'] = this.phoneCode;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class State {
  int? id;
  int? countryId;
  String? name;
  String? createdAt;
  String? updatedAt;

  State({this.id, this.countryId, this.name, this.createdAt, this.updatedAt});

  State.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country_id'] = this.countryId;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class City {
  int? id;
  int? stateId;
  String? name;
  String? createdAt;
  String? updatedAt;

  City({this.id, this.stateId, this.name, this.createdAt, this.updatedAt});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stateId = json['state_id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['state_id'] = this.stateId;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
