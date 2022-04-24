
class ApiEndPoint {

  static String BASE_URL = "https://hindustanbrassindustries.com/api/";


  static Uri REGISTER = Uri.parse(BASE_URL + "register");
  static Uri login = Uri.parse(BASE_URL + "login");
  static Uri ForgetPassword = Uri.parse(BASE_URL + "forgot-password");
  static Uri socialmediasignup = Uri.parse(BASE_URL + "social-media-signup");
  static Uri getJobCategory = Uri.parse(BASE_URL + "job-categories");
  static Uri AppliedJob = Uri.parse(BASE_URL + "candidate/applied-jobs");
  static Uri logout = Uri.parse(BASE_URL + "logout");
  // static Uri LOGIN = Uri.parse(BASE_URL + "/auth/login");


}